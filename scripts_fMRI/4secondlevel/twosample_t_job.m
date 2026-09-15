%-----------------------------------------------------------------------
%Two Sample t-test 
% AM - 24 Sep 2025
%-----------------------------------------------------------------------
% Add subject ids for group1 (DLD) and group 2(TYP)
% Phon Task
DLD_SIds = {'sub-5035', 'sub-5301', 'sub-5357', 'sub-5362', ...
            'sub-5391', 'sub-5435', 'sub-5460', 'sub-5464', ....
            'sub-5516', 'sub-5258', 'sub-5374', 'sub-5376', ....
            'sub-5446', 'sub-5477', 'sub-5541', 'sub-5588'}; % 16 good phon run subjects

TYP_SIds = {'sub-5501', 'sub-5553', 'sub-5480', 'sub-5310', ...
    'sub-5099', 'sub-5508', 'sub-5447', 'sub-5495', ...
    'sub-5443', 'sub-5295', 'sub-5259', 'sub-5555', ...
    'sub-5007', 'sub-5010', 'sub-5054', 'sub-5015',  ...
};

% Sem Task
% DLD_SIds = { ...
%     'sub-5035', 'sub-5262', 'sub-5357', 'sub-5362', ...
%     'sub-5391', 'sub-5428', 'sub-5435', 'sub-5460', ...
%     'sub-5489', 'sub-5513', 'sub-5516', 'sub-5544', ...
%     'sub-5374', 'sub-5446', 'sub-5507', 'sub-5541', ...
%     'sub-5587', 'sub-5588' ...
% }; % 18 good sem runs
% 
% TYP_SIds = { ...
%     'sub-5501', 'sub-5495', 'sub-5480', 'sub-5310', ...
%     'sub-5099', 'sub-5003', 'sub-5508', 'sub-5447', ...
%     'sub-5452', 'sub-5022', 'sub-5443', 'sub-5367', ...
%     'sub-5259', 'sub-5007', 'sub-5560', ...
%     'sub-5054', 'sub-5438', 'sub-5015' ...
% };


% --- USER INPUTS ---
root_dir = '/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/data';
cond_folder = 'ses7_analysis_phon/deweight'; % change to sem
img_pattern = 'con_0001.nii';              % the contrast image to use
out_dir     = '/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/second_level_two_sample_ttest/phon_new'; % change to sem

%% Do not change below
% Create output directory if needed
if ~exist(out_dir, 'dir'); mkdir(out_dir); end

% --- INIT SPM ---
spm('Defaults','fMRI');
spm_jobman('initcfg');

% --- COLLECT IMAGES ---
scans1 = cell(numel(DLD_SIds), 1);
missing   = {};
for i = 1:numel(DLD_SIds) 
sid = DLD_SIds{i};
    fpath = fullfile(root_dir, sid, cond_folder, img_pattern);
    if exist(fpath, 'file')
        % SPM volume spec
        scans1{i} = [fpath ',1'];
    else
        scans1{i} = '';
        missing{end+1} = fpath; %#ok<AGROW>
    end
end

scans2 = cell(numel(TYP_SIds), 1);
missing   = {};
for i = 1:numel(TYP_SIds) 
sid = TYP_SIds{i};
    fpath = fullfile(root_dir, sid, cond_folder, img_pattern);
    if exist(fpath, 'file')
        % SPM volume spec
        scans2{i} = [fpath ',1'];
    else
        scans2{i} = '';
        missing{end+1} = fpath; %#ok<AGROW>
    end
end


%% Matlab Batch

matlabbatch{1}.spm.stats.factorial_design.dir = {out_dir};
matlabbatch{1}.spm.stats.factorial_design.des.t2.scans1 = scans1(:);
matlabbatch{1}.spm.stats.factorial_design.des.t2.scans2 = scans2(:);

matlabbatch{1}.spm.stats.factorial_design.des.t2.dept = 0;
matlabbatch{1}.spm.stats.factorial_design.des.t2.variance = 1;
matlabbatch{1}.spm.stats.factorial_design.des.t2.gmsca = 0;
matlabbatch{1}.spm.stats.factorial_design.des.t2.ancova = 0;
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;

% 2) Model estimation
matlabbatch{2}.spm.stats.fmri_est.spmmat = {fullfile(out_dir, 'SPM.mat')};
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;

% 3) Contrasts
% Define: Group1 > Group2 and Group2 > Group1
matlabbatch{3}.spm.stats.con.spmmat = {fullfile(out_dir, 'SPM.mat')};
matlabbatch{3}.spm.stats.con.delete = 0;

matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'DLD > TYP';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = [1 -1];
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';

matlabbatch{3}.spm.stats.con.consess{2}.tcon.name = 'TYP > DLD';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.weights = [-1 1];
matlabbatch{3}.spm.stats.con.consess{2}.tcon.sessrep = 'none';

spm_jobman('run', matlabbatch);
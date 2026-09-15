path = '/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/second_level_one_sample_ttest';
%% DLD phon IFGop
matlabbatch{1}.spm.stats.results.spmmat = {strcat(path,'/DLD_onsetrhyme_vs_perceptual/SPM.mat')};
matlabbatch{1}.spm.stats.results.conspec.titlestr = '';
matlabbatch{1}.spm.stats.results.conspec.contrasts = 1;
matlabbatch{1}.spm.stats.results.conspec.threshdesc = 'none';
matlabbatch{1}.spm.stats.results.conspec.thresh = 0.005;
matlabbatch{1}.spm.stats.results.conspec.extent = 20;
matlabbatch{1}.spm.stats.results.conspec.mask.image.name = {'/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/scripts/ROI/l_IFGop.nii,1'};
matlabbatch{1}.spm.stats.results.conspec.mask.image.mtype = 0;
matlabbatch{1}.spm.stats.results.units = 1;
matlabbatch{1}.spm.stats.results.print = 'none';  % suppress auto-print
% Save thresholded SPM and binary cluster mask as NIfTI files
matlabbatch{1}.spm.stats.results.write.tspm.basename  = 'DLD_onsetrhyme_vs_perceptual_IFGop_thrvox';
matlabbatch{1}.spm.stats.results.write.binary.basename = 'DLD_onsetrhyme_vs_perceptual_IFGop_maskvox';
spm('defaults','fmri');
spm_jobman('run', matlabbatch);

path = '/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/second_level_one_sample_ttest';
%% DLD phon pSTG
matlabbatch{1}.spm.stats.results.spmmat = {strcat(path,'/DLD_onsetrhyme_vs_perceptual/SPM.mat')};
matlabbatch{1}.spm.stats.results.conspec.titlestr = '';
matlabbatch{1}.spm.stats.results.conspec.contrasts = 1;
matlabbatch{1}.spm.stats.results.conspec.threshdesc = 'none';
matlabbatch{1}.spm.stats.results.conspec.thresh = 0.005;
matlabbatch{1}.spm.stats.results.conspec.extent = 46;
matlabbatch{1}.spm.stats.results.conspec.mask.image.name = {'/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/scripts/ROI/ROI_pSTG_SMG_union.nii,1'};
matlabbatch{1}.spm.stats.results.conspec.mask.image.mtype = 0;
matlabbatch{1}.spm.stats.results.units = 1;
matlabbatch{1}.spm.stats.results.print = 'none';  % suppress auto-print
% Save thresholded SPM and binary cluster mask as NIfTI files
matlabbatch{1}.spm.stats.results.write.tspm.basename  = 'DLD_onsetrhyme_vs_perceptual_pSTG_thrvox';
matlabbatch{1}.spm.stats.results.write.binary.basename = 'DLD_onsetrhyme_vs_perceptual_pSTG_maskvox';
spm('defaults','fmri');
spm_jobman('run', matlabbatch);

%% TYP phon pSTG
matlabbatch{1}.spm.stats.results.spmmat = {strcat(path,'/TYP_onsetrhyme_vs_perceptual/SPM.mat')};
matlabbatch{1}.spm.stats.results.conspec.titlestr = '';
matlabbatch{1}.spm.stats.results.conspec.contrasts = 1;
matlabbatch{1}.spm.stats.results.conspec.threshdesc = 'none';
matlabbatch{1}.spm.stats.results.conspec.thresh = 0.005;
matlabbatch{1}.spm.stats.results.conspec.extent = 43;
matlabbatch{1}.spm.stats.results.conspec.mask.image.name = {'/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/scripts/ROI/ROI_pSTG_SMG_union.nii,1'};
matlabbatch{1}.spm.stats.results.conspec.mask.image.mtype = 0;
matlabbatch{1}.spm.stats.results.units = 1;
matlabbatch{1}.spm.stats.results.print = 'none';  % suppress auto-print
% Save thresholded SPM and binary cluster mask as NIfTI files
matlabbatch{1}.spm.stats.results.write.tspm.basename  = 'TYP_onsetrhyme_vs_perceptual_pSTG_thrvox';
matlabbatch{1}.spm.stats.results.write.binary.basename = 'TYP_onsetrhyme_vs_perceptual_pSTG_maskvox';
spm('defaults','fmri');
spm_jobman('run', matlabbatch);

%% DLD phon IFGTRI
matlabbatch{1}.spm.stats.results.spmmat = {strcat(path,'/DLD_weakstrong_vs_perceptual/SPM.mat')};
matlabbatch{1}.spm.stats.results.conspec.titlestr = '';
matlabbatch{1}.spm.stats.results.conspec.contrasts = 1;
matlabbatch{1}.spm.stats.results.conspec.threshdesc = 'none';
matlabbatch{1}.spm.stats.results.conspec.thresh = 0.005;
matlabbatch{1}.spm.stats.results.conspec.extent = 39;
matlabbatch{1}.spm.stats.results.conspec.mask.image.name = {'/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/scripts/ROI/l_IFGtri.nii,1'};
matlabbatch{1}.spm.stats.results.conspec.mask.image.mtype = 0;
matlabbatch{1}.spm.stats.results.units = 1;
matlabbatch{1}.spm.stats.results.print = 'none';  % suppress auto-print
% Save thresholded SPM and binary cluster mask as NIfTI files
matlabbatch{1}.spm.stats.results.write.tspm.basename  = 'DLD_weakstrong_vs_perceptual_IFGtri_thrvox';
matlabbatch{1}.spm.stats.results.write.binary.basename = 'DLD_weakstrong_vs_perceptual_IFGtri_maskvox';
spm('defaults','fmri');
spm_jobman('run', matlabbatch);

%% DLD phon pMTG
matlabbatch{1}.spm.stats.results.spmmat = {strcat(path,'/DLD_weakstrong_vs_perceptual/SPM.mat')};
matlabbatch{1}.spm.stats.results.conspec.titlestr = '';
matlabbatch{1}.spm.stats.results.conspec.contrasts = 1;
matlabbatch{1}.spm.stats.results.conspec.threshdesc = 'none';
matlabbatch{1}.spm.stats.results.conspec.thresh = 0.005;
matlabbatch{1}.spm.stats.results.conspec.extent = 55;
matlabbatch{1}.spm.stats.results.conspec.mask.image.name = {'/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/scripts/ROI/ROI_pMTG_AG_union.nii,1'};
matlabbatch{1}.spm.stats.results.conspec.mask.image.mtype = 0;
matlabbatch{1}.spm.stats.results.units = 1;
matlabbatch{1}.spm.stats.results.print = 'none';  % suppress auto-print
% Save thresholded SPM and binary cluster mask as NIfTI files
matlabbatch{1}.spm.stats.results.write.tspm.basename  = 'DLD_weakstrong_vs_perceptual_pMTG_thrvox';
matlabbatch{1}.spm.stats.results.write.binary.basename = 'DLD_weakstrong_vs_perceptual_pMTG_maskvox';
spm('defaults','fmri');
spm_jobman('run', matlabbatch);

%% TYP phon pMTG
matlabbatch{1}.spm.stats.results.spmmat = {strcat(path,'/TYP_weakstrong_vs_perceptual/SPM.mat')};
matlabbatch{1}.spm.stats.results.conspec.titlestr = '';
matlabbatch{1}.spm.stats.results.conspec.contrasts = 1;
matlabbatch{1}.spm.stats.results.conspec.threshdesc = 'none';
matlabbatch{1}.spm.stats.results.conspec.thresh = 0.005;
matlabbatch{1}.spm.stats.results.conspec.extent = 52;
matlabbatch{1}.spm.stats.results.conspec.mask.image.name = {'/panfs/accrepfs.vampire/data/booth_lab/AM/ELP_autism/scripts/ROI/ROI_pMTG_AG_union.nii,1'};
matlabbatch{1}.spm.stats.results.conspec.mask.image.mtype = 0;
matlabbatch{1}.spm.stats.results.units = 1;
matlabbatch{1}.spm.stats.results.print = 'none';  % suppress auto-print
% Save thresholded SPM and binary cluster mask as NIfTI files
matlabbatch{1}.spm.stats.results.write.tspm.basename  = 'TYP_weakstrong_vs_perceptual_pMTG_thrvox';
matlabbatch{1}.spm.stats.results.write.binary.basename = 'TYP_weakstrong_vs_perceptual_pMTG_maskvox';
spm('defaults','fmri');
spm_jobman('run', matlabbatch);
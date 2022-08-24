% (C) Copyright 2020 Remi Gau, Marco Barilari

function opt = getOptionHandDownDecoding()
    %
    % returns a structure that contains the options chosen by the user to run
    % slice timing correction, pre-processing, subject and group level analysis.
    %
    % for more info see:
    % <https://cpp-bids-spm.readthedocs.io/en/latest/set_up.html#configuration-of-the-pipeline>
    % <https://cpp-bids-spm.readthedocs.io/en/latest/defaults.html#checkoptions>

 if nargin < 1
    opt = [];
  end

  % group of subjects to analyze
  opt.groups = {''};
  % suject to run in each group
      opt.subjects = {'005'};

  % Uncomment the lines below to run preprocessing
  % - don't use realign and unwarp
  opt.realign.useUnwarp = true;

  % we stay in native space (that of the T1)
  % - in "native" space: don't do normalization
  opt.space = 'MNI'; % 'individual', 'MNI'

  % task to analyze
  opt.taskName = 'handDown'; %'handDown' , 'handUp'

  %% set paths
  opt.dataDir = fullfile(fileparts(mfilename('fullpath')), ...
                           '..', '..', '..', 'raw');
  opt.derivativesDir = fullfile(opt.dataDir, '..', ...
                                  'derivatives', 'cpp_spm');

  % Suffix output directory for the saved jobs
  opt.jobsDir = fullfile( ...
                         opt.dataDir, '..', 'derivatives', ...
                         'cpp_spm', 'JOBS', opt.taskName);
             
   opt.glm.QA.do =    true;               
                     
  % specify the model file that contains the contrasts to compute
    % univariate
    opt.model.file =  ...
        fullfile(fileparts(mfilename('fullpath')), '..', ...
                 'model', 'model-handDownDecoding_smdl.json'); %'model-FoR1Decoding_smdl.json'


  % to add the hrf temporal derivative = [1 0]
  % to add the hrf temporal and dispersion derivative = [1 1]
  % opt.model.hrfDerivatives = [0 0];

  %% Specify the result to compute
  opt.result.Steps(1) = returnDefaultResultsStructure();

  opt.result.Steps(1).Level = 'subject';

  opt.result.Steps(1).Contrasts(1).Name = 'handDown_vertical_1';
  opt.result.Steps(1).Contrasts(1).MC =  'none';
  opt.result.Steps(1).Contrasts(1).p = 0.001;
  opt.result.Steps(1).Contrasts(1).k = 0;

  % For each contrats, you can adapt:
  %  - voxel level (p)
  %  - cluster (k) level threshold
  %  - type of multiple comparison (MC):
  %    - 'FWE' is the defaut
  %    - 'FDR'
  %    - 'none'
  %
  % not working for multiple contrasts

  opt.result.Steps(1).Contrasts(2).Name = 'handDown_vertical_1';
  opt.result.Steps(1).Contrasts(2).MC =  'FWE';
  opt.result.Steps(1).Contrasts(2).p = 0.05;
  opt.result.Steps(1).Contrasts(2).k = 0;
  
  opt.result.Steps(1).Contrasts(3).Name = 'handDown_vertical_2';
  opt.result.Steps(1).Contrasts(3).MC =  'none';
  opt.result.Steps(1).Contrasts(3).p = 0.001;
  opt.result.Steps(1).Contrasts(3).k = 0;

  opt.result.Steps(1).Contrasts(4).Name = 'handDown_vertical_2';
  opt.result.Steps(1).Contrasts(4).MC =  'FWE';
  opt.result.Steps(1).Contrasts(4).p = 0.05;
  opt.result.Steps(1).Contrasts(4).k = 0;

  opt.result.Steps(1).Contrasts(5).Name = 'handDown_vertical_3';
  opt.result.Steps(1).Contrasts(5).MC =  'none';
  opt.result.Steps(1).Contrasts(5).p = 0.001;
  opt.result.Steps(1).Contrasts(5).k = 0;

  opt.result.Steps(1).Contrasts(6).Name = 'handDown_vertical_3';
  opt.result.Steps(1).Contrasts(6).MC =  'FWE';
  opt.result.Steps(1).Contrasts(6).p = 0.05;
  opt.result.Steps(1).Contrasts(6).k = 0;

  opt.result.Steps(1).Contrasts(7).Name = 'handDown_vertical_4';
  opt.result.Steps(1).Contrasts(7).MC =  'none';
  opt.result.Steps(1).Contrasts(7).p = 0.001;
  opt.result.Steps(1).Contrasts(7).k = 0;

  opt.result.Steps(1).Contrasts(8).Name = 'handDown_vertical_4';
  opt.result.Steps(1).Contrasts(8).MC =  'FWE';
  opt.result.Steps(1).Contrasts(8).p = 0.05;
  opt.result.Steps(1).Contrasts(8).k = 0;

  opt.result.Steps(1).Contrasts(9).Name = 'handDown_vertical_5';
  opt.result.Steps(1).Contrasts(9).MC =  'none';
  opt.result.Steps(1).Contrasts(9).p = 0.001;
  opt.result.Steps(1).Contrasts(9).k = 0;

  opt.result.Steps(1).Contrasts(10).Name = 'handDown_vertical_5';
  opt.result.Steps(1).Contrasts(10).MC =  'FWE';
  opt.result.Steps(1).Contrasts(10).p = 0.05;
  opt.result.Steps(1).Contrasts(10).k = 0;

  opt.result.Steps(1).Contrasts(11).Name = 'handDown_vertical_6';
  opt.result.Steps(1).Contrasts(11).MC =  'none';
  opt.result.Steps(1).Contrasts(11).p = 0.001;
  opt.result.Steps(1).Contrasts(11).k = 0;

  opt.result.Steps(1).Contrasts(12).Name = 'handDown_vertical_6';
  opt.result.Steps(1).Contrasts(12).MC =  'FWE';
  opt.result.Steps(1).Contrasts(12).p = 0.05;
  opt.result.Steps(1).Contrasts(12).k = 0;

  opt.result.Steps(1).Contrasts(13).Name = 'handDown_vertical_7';
  opt.result.Steps(1).Contrasts(13).MC =  'none';
  opt.result.Steps(1).Contrasts(13).p = 0.001;
  opt.result.Steps(1).Contrasts(13).k = 0;

  opt.result.Steps(1).Contrasts(14).Name = 'handDown_vertical_7';
  opt.result.Steps(1).Contrasts(14).MC =  'FWE';
  opt.result.Steps(1).Contrasts(14).p = 0.05;
  opt.result.Steps(1).Contrasts(14).k = 0;

  opt.result.Steps(1).Contrasts(15).Name = 'handDown_vertical_8';
  opt.result.Steps(1).Contrasts(15).MC =  'none';
  opt.result.Steps(1).Contrasts(15).p = 0.001;
  opt.result.Steps(1).Contrasts(15).k = 0;

  opt.result.Steps(1).Contrasts(16).Name = 'handDown_vertical_8';
  opt.result.Steps(1).Contrasts(16).MC =  'FWE';
  opt.result.Steps(1).Contrasts(16).p = 0.05;
  opt.result.Steps(1).Contrasts(16).k = 0;

  opt.result.Steps(1).Contrasts(17).Name = 'handDown_vertical_9';
  opt.result.Steps(1).Contrasts(17).MC =  'none';
  opt.result.Steps(1).Contrasts(17).p = 0.001;
  opt.result.Steps(1).Contrasts(17).k = 0;

  opt.result.Steps(1).Contrasts(18).Name = 'handDown_vertical_9';
  opt.result.Steps(1).Contrasts(18).MC =  'FWE';
  opt.result.Steps(1).Contrasts(18).p = 0.05;
  opt.result.Steps(1).Contrasts(18).k = 0;

%   opt.result.Steps(1).Contrasts(19).Name = 'handDown_vertical_10';
%   opt.result.Steps(1).Contrasts(19).MC =  'none';
%   opt.result.Steps(1).Contrasts(19).p = 0.001;
%   opt.result.Steps(1).Contrasts(19).k = 0;
% 
%   opt.result.Steps(1).Contrasts(20).Name = 'handDown_vertical_10';
%   opt.result.Steps(1).Contrasts(20).MC =  'FWE';
%   opt.result.Steps(1).Contrasts(20).p = 0.05;
%   opt.result.Steps(1).Contrasts(20).k = 0;
% 
%   opt.result.Steps(1).Contrasts(21).Name = 'handDown_vertical_11';
%   opt.result.Steps(1).Contrasts(21).MC =  'none';
%   opt.result.Steps(1).Contrasts(21).p = 0.001;
%   opt.result.Steps(1).Contrasts(21).k = 0;
% 
%   opt.result.Steps(1).Contrasts(22).Name = 'handDown_vertical_11';
%   opt.result.Steps(1).Contrasts(22).MC =  'FWE';
%   opt.result.Steps(1).Contrasts(22).p = 0.05;
%   opt.result.Steps(1).Contrasts(22).k = 0;
% 
%   opt.result.Steps(1).Contrasts(23).Name = 'handDown_vertical_12';
%   opt.result.Steps(1).Contrasts(23).MC =  'none';
%   opt.result.Steps(1).Contrasts(23).p = 0.001;
%   opt.result.Steps(1).Contrasts(23).k = 0;
% 
%   opt.result.Steps(1).Contrasts(24).Name = 'handDown_vertical_12';
%   opt.result.Steps(1).Contrasts(24).MC =  'FWE';
%   opt.result.Steps(1).Contrasts(24).p = 0.05;
%   opt.result.Steps(1).Contrasts(24).k = 0;
% 
%   opt.result.Steps(1).Contrasts(25).Name = 'handDown_vertical_13';
%   opt.result.Steps(1).Contrasts(25).MC =  'none';
%   opt.result.Steps(1).Contrasts(25).p = 0.001;
%   opt.result.Steps(1).Contrasts(25).k = 0;
% 
%   opt.result.Steps(1).Contrasts(26).Name = 'handDown_vertical_13';
%   opt.result.Steps(1).Contrasts(26).MC =  'FWE';
%   opt.result.Steps(1).Contrasts(26).p = 0.05;
%   opt.result.Steps(1).Contrasts(26).k = 0;

  opt.result.Steps(1).Contrasts(19).Name = 'handDown_horizontal_1';
  opt.result.Steps(1).Contrasts(19).MC =  'none';
  opt.result.Steps(1).Contrasts(19).p = 0.001;
  opt.result.Steps(1).Contrasts(19).k = 0;

  opt.result.Steps(1).Contrasts(20).Name = 'handDown_horizontal_1';
  opt.result.Steps(1).Contrasts(20).MC =  'FWE';
  opt.result.Steps(1).Contrasts(20).p = 0.05;
  opt.result.Steps(1).Contrasts(20).k = 0;

  opt.result.Steps(1).Contrasts(21).Name = 'handDown_horizontal_2';
  opt.result.Steps(1).Contrasts(21).MC =  'none';
  opt.result.Steps(1).Contrasts(21).p = 0.001;
  opt.result.Steps(1).Contrasts(21).k = 0;

  opt.result.Steps(1).Contrasts(22).Name = 'handDown_horizontal_2';
  opt.result.Steps(1).Contrasts(22).MC =  'FWE';
  opt.result.Steps(1).Contrasts(22).p = 0.05;
  opt.result.Steps(1).Contrasts(22).k = 0;
  
  opt.result.Steps(1).Contrasts(23).Name = 'handDown_horizontal_3';
  opt.result.Steps(1).Contrasts(23).MC =  'none';
  opt.result.Steps(1).Contrasts(23).p = 0.001;
  opt.result.Steps(1).Contrasts(23).k = 0;

  opt.result.Steps(1).Contrasts(24).Name = 'handDown_horizontal_3';
  opt.result.Steps(1).Contrasts(24).MC =  'FWE';
  opt.result.Steps(1).Contrasts(24).p = 0.05;
  opt.result.Steps(1).Contrasts(24).k = 0;

  opt.result.Steps(1).Contrasts(25).Name = 'handDown_horizontal_4';
  opt.result.Steps(1).Contrasts(25).MC =  'none';
  opt.result.Steps(1).Contrasts(25).p = 0.001;
  opt.result.Steps(1).Contrasts(25).k = 0;

  opt.result.Steps(1).Contrasts(26).Name = 'handDown_horizontal_4';
  opt.result.Steps(1).Contrasts(26).MC =  'FWE';
  opt.result.Steps(1).Contrasts(26).p = 0.05;
  opt.result.Steps(1).Contrasts(26).k = 0;
  
  opt.result.Steps(1).Contrasts(27).Name = 'handDown_horizontal_5';
  opt.result.Steps(1).Contrasts(27).MC =  'none';
  opt.result.Steps(1).Contrasts(27).p = 0.001;
  opt.result.Steps(1).Contrasts(27).k = 0;

  opt.result.Steps(1).Contrasts(28).Name = 'handDown_horizontal_5';
  opt.result.Steps(1).Contrasts(28).MC =  'FWE';
  opt.result.Steps(1).Contrasts(28).p = 0.05;
  opt.result.Steps(1).Contrasts(28).k = 0;

  opt.result.Steps(1).Contrasts(29).Name = 'handDown_horizontal_6';
  opt.result.Steps(1).Contrasts(29).MC =  'none';
  opt.result.Steps(1).Contrasts(29).p = 0.001;
  opt.result.Steps(1).Contrasts(29).k = 0;

  opt.result.Steps(1).Contrasts(30).Name = 'handDown_horizontal_6';
  opt.result.Steps(1).Contrasts(30).MC =  'FWE';
  opt.result.Steps(1).Contrasts(30).p = 0.05;
  opt.result.Steps(1).Contrasts(30).k = 0;

  opt.result.Steps(1).Contrasts(31).Name = 'handDown_horizontal_7';
  opt.result.Steps(1).Contrasts(31).MC =  'none';
  opt.result.Steps(1).Contrasts(31).p = 0.001;
  opt.result.Steps(1).Contrasts(31).k = 0;

  opt.result.Steps(1).Contrasts(32).Name = 'handDown_horizontal_7';
  opt.result.Steps(1).Contrasts(32).MC =  'FWE';
  opt.result.Steps(1).Contrasts(32).p = 0.05;
  opt.result.Steps(1).Contrasts(32).k = 0;

  opt.result.Steps(1).Contrasts(33).Name = 'handDown_horizontal_8';
  opt.result.Steps(1).Contrasts(33).MC =  'none';
  opt.result.Steps(1).Contrasts(33).p = 0.001;
  opt.result.Steps(1).Contrasts(33).k = 0;

  opt.result.Steps(1).Contrasts(34).Name = 'handDown_horizontal_8';
  opt.result.Steps(1).Contrasts(34).MC =  'FWE';
  opt.result.Steps(1).Contrasts(34).p = 0.05;
  opt.result.Steps(1).Contrasts(34).k = 0;

  opt.result.Steps(1).Contrasts(35).Name = 'handDown_horizontal_9';
  opt.result.Steps(1).Contrasts(35).MC =  'none';
  opt.result.Steps(1).Contrasts(35).p = 0.001;
  opt.result.Steps(1).Contrasts(35).k = 0;

  opt.result.Steps(1).Contrasts(36).Name = 'handDown_horizontal_9';
  opt.result.Steps(1).Contrasts(36).MC =  'FWE';
  opt.result.Steps(1).Contrasts(36).p = 0.05;
  opt.result.Steps(1).Contrasts(36).k = 0;

%   opt.result.Steps(1).Contrasts(45).Name = 'handDown_horizontal_10';
%   opt.result.Steps(1).Contrasts(45).MC =  'none';
%   opt.result.Steps(1).Contrasts(45).p = 0.001;
%   opt.result.Steps(1).Contrasts(45).k = 0;
% 
%   opt.result.Steps(1).Contrasts(46).Name = 'handDown_horizontal_10';
%   opt.result.Steps(1).Contrasts(46).MC =  'FWE';
%   opt.result.Steps(1).Contrasts(46).p = 0.05;
%   opt.result.Steps(1).Contrasts(46).k = 0;
% 
%   opt.result.Steps(1).Contrasts(47).Name = 'handDown_horizontal_11';
%   opt.result.Steps(1).Contrasts(47).MC =  'none';
%   opt.result.Steps(1).Contrasts(47).p = 0.001;
%   opt.result.Steps(1).Contrasts(47).k = 0;
% 
%   opt.result.Steps(1).Contrasts(48).Name = 'handDown_horizontal_11';
%   opt.result.Steps(1).Contrasts(48).MC =  'FWE';
%   opt.result.Steps(1).Contrasts(48).p = 0.05;
%   opt.result.Steps(1).Contrasts(48).k = 0;
% 
%   opt.result.Steps(1).Contrasts(49).Name = 'handDown_horizontal_12';
%   opt.result.Steps(1).Contrasts(49).MC =  'none';
%   opt.result.Steps(1).Contrasts(49).p = 0.001;
%   opt.result.Steps(1).Contrasts(49).k = 0;
% 
%   opt.result.Steps(1).Contrasts(50).Name = 'handDown_horizontal_12';
%   opt.result.Steps(1).Contrasts(50).MC =  'FWE';
%   opt.result.Steps(1).Contrasts(50).p = 0.05;
%   opt.result.Steps(1).Contrasts(50).k = 0;
% 
%   opt.result.Steps(1).Contrasts(51).Name = 'handDown_horizontal_13';
%   opt.result.Steps(1).Contrasts(51).MC =  'none';
%   opt.result.Steps(1).Contrasts(51).p = 0.001;
%   opt.result.Steps(1).Contrasts(51).k = 0;
% 
%   opt.result.Steps(1).Contrasts(52).Name = 'handDown_horizontal_13';
%   opt.result.Steps(1).Contrasts(52).MC =  'FWE';
%   opt.result.Steps(1).Contrasts(52).p = 0.05;
%   opt.result.Steps(1).Contrasts(52).k = 0;


  % Specify how you want your output (all the following are on false by default)
  opt.result.Steps(1).Output.png = true();

  opt.result.Steps(1).Output.csv = true();

  opt.result.Steps(1).Output.thresh_spm = true();

  opt.result.Steps(1).Output.binary = true();

  opt.result.Steps(1).Output.montage.do = true();
  opt.result.Steps(1).Output.montage.slices = -12:4:60; % in mm -8:3:15;
  % axial is default 'sagittal', 'coronal'
  opt.result.Steps(1).Output.montage.orientation = 'axial';

  % will use the MNI T1 template by default but the underlay image can be
  % changed.
  opt.result.Steps(1).Output.montage.background = ...
      fullfile(spm('dir'), 'canonical', 'avg152T1.nii,1');

  %   opt.result.Steps(1).Output.NIDM_results = true();

  % Options for slice time correction
  opt.sliceOrder = [0, 0.875, 0.0673, 0.9423, 0.1346, 1.0096, 0.2019, 1.0769, 0.2692, 1.1442,...
        0.3365, 1.2115, 0.4038, 1.2788, 0.4711, 1.3461, 0.5384, 1.4134, 0.6057, 1.4807,...
        0.673, 1.548, 0.7403, 1.6826, 0.8076, 1.6153, 0, 0.875, 0.0673, 0.9423, ...
        0.1346, 1.0096, 0.2019, 1.0769, 0.2692, 1.1442, 0.3365, 1.2115, 0.4038, 1.2788,...
        0.4711, 1.3461, 0.5384, 1.4134, 0.6057, 1.4807, 0.673, 1.548, 0.7403, 1.6826,...
        0.8076, 1.6153];
  
  opt.STC_referenceSlice = [];

  % Options for normalize
  % Voxel dimensions for resampling at normalization of functional data or leave empty [ ].


  opt.parallelize.do = true;
  opt.parallelize.nbWorkers = 3;
  opt.parallelize.killOnExit = true;
  
%    opt.model.hrfDerivatives = [1 0];

  %% DO NOT TOUCH
  opt = checkOptions(opt);
  saveOptions(opt);


end

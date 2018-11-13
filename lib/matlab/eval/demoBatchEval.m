clc; clear; close all;
path = genpath('../../matlab');
addpath(path)

%% Evaluation on SBD Test Set (Instance-Sensitive)
categories = categories_sbd();
eval_dir = {'../../../exper/sbd/result/deploy/test/inst/casenet';...
            '../../../exper/sbd/result/deploy/test/inst/casenet-s';...
            '../../../exper/sbd/result/deploy/test/inst/casenet-c';...
            '../../../exper/sbd/result/deploy/test/inst/seal'};
% Original GT (Thin)
result_dir = {'../../../exper/sbd/result/evaluation/test/inst/gt_orig_thin/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_thin/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_thin/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_thin/score_seal'};
evaluation('../../../data/sbd-preprocess/gt_eval/gt_orig_thin/test.mat',...
           '../../../data/sbd-preprocess/gt_eval/gt_orig_thin/inst',...
           eval_dir, result_dir, categories, 5, 99, true, 0.02)
% Original GT (Raw)
result_dir = {'../../../exper/sbd/result/evaluation/test/inst/gt_orig_raw/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_raw/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_raw/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_raw/score_seal'};
evaluation('../../../data/sbd-preprocess/gt_eval/gt_orig_raw/test.mat',...
           '../../../data/sbd-preprocess/gt_eval/gt_orig_raw/inst',...
           eval_dir, result_dir, categories, 5, 99, false, 0.02)
% Re-annotated GT (Thin)
result_dir = {'../../../exper/sbd/result/evaluation/test/inst/gt_reanno_thin/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_thin/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_thin/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_thin/score_seal'};
evaluation('../../../data/sbd-preprocess/gt_eval/gt_reanno_thin/test.mat',...
           '../../../data/sbd-preprocess/gt_eval/gt_reanno_thin/inst',...
           eval_dir, result_dir, categories, 5, 99, true, 0.0075)
% Re-annotated GT (Raw)
result_dir = {'../../../exper/sbd/result/evaluation/test/inst/gt_reanno_raw/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_raw/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_raw/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_raw/score_seal'};
evaluation('../../../data/sbd-preprocess/gt_eval/gt_reanno_raw/test.mat',...
           '../../../data/sbd-preprocess/gt_eval/gt_reanno_raw/inst',...
           eval_dir, result_dir, categories, 5, 99, false, 0.0075)

%% Evaluation on SBD Test Set (Non-Instance-Sensitive)
categories = categories_sbd();
eval_dir = {'../../../exper/sbd/result/deploy/test/cls/casenet';...
            '../../../exper/sbd/result/deploy/test/cls/casenet-s';...
            '../../../exper/sbd/result/deploy/test/cls/casenet-c';...
            '../../../exper/sbd/result/deploy/test/cls/seal'};
% Original GT (Thin)
result_dir = {'../../../exper/sbd/result/evaluation/test/cls/gt_orig_thin/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_orig_thin/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_orig_thin/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_orig_thin/score_seal'};
evaluation('../../../data/sbd-preprocess/gt_eval/gt_orig_thin/test.mat',...
           '../../../data/sbd-preprocess/gt_eval/gt_orig_thin/cls',...
           eval_dir, result_dir, categories, 5, 99, true, 0.02)
% Original GT (Raw)
result_dir = {'../../../exper/sbd/result/evaluation/test/cls/gt_orig_raw/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_orig_raw/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_orig_raw/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_orig_raw/score_seal'};
evaluation('../../../data/sbd-preprocess/gt_eval/gt_orig_raw/test.mat',...
           '../../../data/sbd-preprocess/gt_eval/gt_orig_raw/cls',...
           eval_dir, result_dir, categories, 5, 99, false, 0.02)
% Re-annotated GT (Thin)
result_dir = {'../../../exper/sbd/result/evaluation/test/cls/gt_reanno_thin/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_reanno_thin/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_reanno_thin/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_reanno_thin/score_seal'};
evaluation('../../../data/sbd-preprocess/gt_eval/gt_reanno_thin/test.mat',...
           '../../../data/sbd-preprocess/gt_eval/gt_reanno_thin/cls',...
           eval_dir, result_dir, categories, 5, 99, true, 0.0075)
% Re-annotated GT (Raw)
result_dir = {'../../../exper/sbd/result/evaluation/test/cls/gt_reanno_raw/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_reanno_raw/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_reanno_raw/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/cls/gt_reanno_raw/score_seal'};
evaluation('../../../data/sbd-preprocess/gt_eval/gt_reanno_raw/test.mat',...
           '../../../data/sbd-preprocess/gt_eval/gt_reanno_raw/cls',...
           eval_dir, result_dir, categories, 5, 99, false, 0.0075)

%% Evaluation on Cityscapes Validation Set (Instance-Sensitive)
categories = categories_city();
eval_dir = {'../../../exper/cityscapes/result/deploy/val/casenet';...
            '../../../exper/cityscapes/result/deploy/val/casenet-s';...
            '../../../exper/cityscapes/result/deploy/val/seal'};
% Original GT (Thin)
result_dir = {'../../../exper/cityscapes/result/evaluation/val/gt_thin/score_casenet';...
              '../../../exper/cityscapes/result/evaluation/val/gt_thin/score_casenet-s';...
              '../../../exper/cityscapes/result/evaluation/val/gt_thin/score_seal'};
evaluation('../../../data/cityscapes-preprocess/gt_eval/gt_thin/val.mat',...
           '../../../data/cityscapes-preprocess/gt_eval/gt_thin/inst',...
           eval_dir, result_dir, categories, 0, 99, true, 0.0035)
% Original GT (Raw)
result_dir = {'../../../exper/cityscapes/result/evaluation/val/gt_raw/score_casenet';...
              '../../../exper/cityscapes/result/evaluation/val/gt_raw/score_casenet-s';...
              '../../../exper/cityscapes/result/evaluation/val/gt_raw/score_seal'};
evaluation('../../../data/cityscapes-preprocess/gt_eval/gt_raw/val.mat',...
           '../../../data/cityscapes-preprocess/gt_eval/gt_raw/inst',...
           eval_dir, result_dir, categories, 0, 99, false, 0.0035)
% function [model] = MEC_1_LD_1_a_f_2_biomodel407_MM1_f_a_syms(f0_user)
function [model] = MEC_1_LD_1_a_f_2_biomodel407_MM1_f_a_syms(varargin)

% CVODES OPTIONS

model.atol = 1e-8;
model.rtol = 1e-8;
model.maxsteps = 1e4;

% STATES

syms mu_1 mu_2 mu_3 mu_4 mu_5 mu_6 mu_7 mu_8 mu_9 mu_10 mu_11 mu_12 mu_13 mu_14 mu_15 mu_16 mu_17 mu_18 mu_19 mu_20 mu_21 mu_22 mu_23 mu_24 mu_25 mu_26 mu_27 mu_28 mu_29 mu_30 mu_31 mu_32 mu_33 mu_34 mu_35 mu_36 mu_37 mu_38 mu_39 mu_40 mu_41 mu_42 mu_43 mu_44 mu_45 mu_46 mu_47

x = [
mu_1, mu_2, mu_3, mu_4, mu_5, mu_6, mu_7, mu_8, mu_9, mu_10, mu_11, mu_12, mu_13, mu_14, mu_15, mu_16, mu_17, mu_18, mu_19, mu_20, mu_21, mu_22, mu_23, mu_24, mu_25, mu_26, mu_27, mu_28, mu_29, mu_30, mu_31, mu_32, mu_33, mu_34, mu_35, mu_36, mu_37, mu_38, mu_39, mu_40, mu_41, mu_42, mu_43, mu_44, mu_45, mu_46, mu_47 ...
];

% PARAMETERS

syms ka_1_J1 ka_2_J2 ka_3_J3 ka_4_J4 kd_4_J4 ka_5_J5 kd_5_J5 ka_6_J6 kd_6_J6 ka_7_J7 kd_7_J7 ka_8_J8 ka_9_J9 ka_10_J10 ka_11_J11 ka_12_J12 ka_13_J13 ka_14_J14 ka_15_J15 ka_16_J16 ka_17_J17 ka_18_J18 kd_18_J18 ka_19_J19 ka_20_J20 ka_21_J21 ka_22_J22 ka_23_J23 ka_24_J24 ka_25_J25 ka_26_J26 ka_27_J27 ka_28_J28 ka_29_J29 ka_30_J30 ka_31_J31 ka_32_J32 ka_33_J33 ka_34_J34 ka_35_J35 kd_35_J35 ka_36_J36 kd_36_J36 ka_37_J37 kd_37_J37 ka_38_J38 kd_38_J38 ka_39_J39 kd_39_J39 ka_40_J40 ka_41_J41 ka_42_J42 ka_43_J43 ka_44_J44 ka_45_J45 ka_46_J46 ka_47_J47 ka_48_J48 ka_49_J49 ka_50_J50 ka_51_J51 ka_52_J52 ka_53_J53 ka_54_J54 ka_55_J55 ka_56_J56 ka_57_J57 ka_58_J58 ka_59_J59 kd_59_J59 ka_60_J60 ka_61_J61 ka_62_J62 ka_63_J63 ka_64_J64 ka_65_J65 ka_66_J66 ka_67_J67 ka_68_J68 kd_68_J68 ka_69_J69 kd_69_J69 ka_70_J70 kd_70_J70 ka_71_J71 ka_72_J72 ka_73_J73 ka_74_J74 ka_75_J75 kd_75_J75 ka_76_J76 ka_77_J77 kd_77_J77 ka_78_J78 ka_79_J79 ka_80_J80 ka_81_J81 ka_82_J82 kd_82_J82 ka_83_J83 ka_84_J84 ka_85_J85 ka_86_J86 ka_87_J87 ka_88_J88 kd_88_J88 

% KAPPA (constant parameters)

syms mu01 mu02 mu03 mu04 mu05 mu06 mu07 mu08 mu09 mu010 mu011 mu012 mu013 mu014 mu015 mu016 mu017 mu018 mu019 mu020 mu021 mu022 mu023 mu024 mu025 mu026 mu027 mu028 mu029 mu030 mu031 mu032 mu033 mu034 mu035 mu036 mu037 mu038 mu039 mu040 mu041 mu042 mu043 mu044 mu045 mu046 mu047 C01 C02 C03 C04 C05 C06 C07 C08 C09 C010 C011 C012 C013 C014 C015 C016 C017 C018 C019 C020 C021 C022 C023 C024 C025 C026 C027 C028 C029 C030 C031 C032 C033 C034 C035 C036 C037 C038 C039 C040 C041 C042 C043 C044 C045 C046 C047 C048 C049 C050 C051 C052 C053 C054 C055 C056 C057 C058 C059 C060 C061 C062 C063 C064 C065 C066 C067 C068 C069 C070 C071 C072 C073 C074 C075 C076 C077 C078 C079 C080 C081 C082 C083 C084 C085 C086 C087 C088 C089 C090 C091 C092 C093 C094 C095 C096 C097 C098 C099 C0100 C0101 C0102 C0103 C0104 C0105 C0106 C0107 C0108 C0109 C0110 C0111 C0112 C0113 C0114 C0115 C0116 C0117 C0118 C0119 C0120 C0121 C0122 C0123 C0124 C0125 C0126 C0127 C0128 C0129 C0130 C0131 C0132 C0133 C0134 C0135 C0136 C0137 C0138 C0139 C0140 C0141 C0142 C0143 C0144 C0145 C0146 C0147 C0148 C0149 C0150 C0151 C0152 C0153 C0154 C0155 C0156 C0157 C0158 C0159 C0160 C0161 C0162 C0163 C0164 C0165 C0166 C0167 C0168 C0169 C0170 C0171 C0172 C0173 C0174 C0175 C0176 C0177 C0178 C0179 C0180 C0181 C0182 C0183 C0184 C0185 C0186 C0187 C0188 C0189 C0190 C0191 C0192 C0193 C0194 C0195 C0196 C0197 C0198 C0199 C0200 C0201 C0202 C0203 C0204 C0205 C0206 C0207 C0208 C0209 C0210 C0211 C0212 C0213 C0214 C0215 C0216 C0217 C0218 C0219 C0220 C0221 C0222 C0223 C0224 C0225 C0226 C0227 C0228 C0229 C0230 C0231 C0232 C0233 C0234 C0235 C0236 C0237 C0238 C0239 C0240 C0241 C0242 C0243 C0244 C0245 C0246 C0247 C0248 C0249 C0250 C0251 C0252 C0253 C0254 C0255 C0256 C0257 C0258 C0259 C0260 C0261 C0262 C0263 C0264 C0265 C0266 C0267 C0268 C0269 C0270 C0271 C0272 C0273 C0274 C0275 C0276 C0277 C0278 C0279 C0280 C0281 C0282 C0283 C0284 C0285 C0286 C0287 C0288 C0289 C0290 C0291 C0292 C0293 C0294 C0295 C0296 C0297 C0298 C0299 C0300 C0301 C0302 C0303 C0304 C0305 C0306 C0307 C0308 C0309 C0310 C0311 C0312 C0313 C0314 C0315 C0316 C0317 C0318 C0319 C0320 C0321 C0322 C0323 C0324 C0325 C0326 C0327 C0328 C0329 C0330 C0331 C0332 C0333 C0334 C0335 C0336 C0337 C0338 C0339 C0340 C0341 C0342 C0343 C0344 C0345 C0346 C0347 C0348 C0349 C0350 C0351 C0352 C0353 C0354 C0355 C0356 C0357 C0358 C0359 C0360 C0361 C0362 C0363 C0364 C0365 C0366 C0367 C0368 C0369 C0370 C0371 C0372 C0373 C0374 C0375 C0376 C0377 C0378 C0379 C0380 C0381 C0382 C0383 C0384 C0385 C0386 C0387 C0388 C0389 C0390 C0391 C0392 C0393 C0394 C0395 C0396 C0397 C0398 C0399 C0400 C0401 C0402 C0403 C0404 C0405 C0406 C0407 C0408 C0409 C0410 C0411 C0412 C0413 C0414 C0415 C0416 C0417 C0418 C0419 C0420 C0421 C0422 C0423 C0424 C0425 C0426 C0427 C0428 C0429 C0430 C0431 C0432 C0433 C0434 C0435 C0436 C0437 C0438 C0439 C0440 C0441 C0442 C0443 C0444 C0445 C0446 C0447 C0448 C0449 C0450 C0451 C0452 C0453 C0454 C0455 C0456 C0457 C0458 C0459 C0460 C0461 C0462 C0463 C0464 C0465 C0466 C0467 C0468 C0469 C0470 C0471 C0472 C0473 C0474 C0475 C0476 C0477 C0478 C0479 C0480 C0481 C0482 C0483 C0484 C0485 C0486 C0487 C0488 C0489 C0490 C0491 C0492 C0493 C0494 C0495 C0496 C0497 C0498 C0499 C0500 C0501 C0502 C0503 C0504 C0505 C0506 C0507 C0508 C0509 C0510 C0511 C0512 C0513 C0514 C0515 C0516 C0517 C0518 C0519 C0520 C0521 C0522 C0523 C0524 C0525 C0526 C0527 C0528 C0529 C0530 C0531 C0532 C0533 C0534 C0535 C0536 C0537 C0538 C0539 C0540 C0541 C0542 C0543 C0544 C0545 C0546 C0547 C0548 C0549 C0550 C0551 C0552 C0553 C0554 C0555 C0556 C0557 C0558 C0559 C0560 C0561 C0562 C0563 C0564 C0565 C0566 C0567 C0568 C0569 C0570 C0571 C0572 C0573 C0574 C0575 C0576 C0577 C0578 C0579 C0580 C0581 C0582 C0583 C0584 C0585 C0586 C0587 C0588 C0589 C0590 C0591 C0592 C0593 C0594 C0595 C0596 C0597 C0598 C0599 C0600 C0601 C0602 C0603 C0604 C0605 C0606 C0607 C0608 C0609 C0610 C0611 C0612 C0613 C0614 C0615 C0616 C0617 C0618 C0619 C0620 C0621 C0622 C0623 C0624 C0625 C0626 C0627 C0628 C0629 C0630 C0631 C0632 C0633 C0634 C0635 C0636 C0637 C0638 C0639 C0640 C0641 C0642 C0643 C0644 C0645 C0646 C0647 C0648 C0649 C0650 C0651 C0652 C0653 C0654 C0655 C0656 C0657 C0658 C0659 C0660 C0661 C0662 C0663 C0664 C0665 C0666 C0667 C0668 C0669 C0670 C0671 C0672 C0673 C0674 C0675 C0676 C0677 C0678 C0679 C0680 C0681 C0682 C0683 C0684 C0685 C0686 C0687 C0688 C0689 C0690 C0691 C0692 C0693 C0694 C0695 C0696 C0697 C0698 C0699 C0700 C0701 C0702 C0703 C0704 C0705 C0706 C0707 C0708 C0709 C0710 C0711 C0712 C0713 C0714 C0715 C0716 C0717 C0718 C0719 C0720 C0721 C0722 C0723 C0724 C0725 C0726 C0727 C0728 C0729 C0730 C0731 C0732 C0733 C0734 C0735 C0736 C0737 C0738 C0739 C0740 C0741 C0742 C0743 C0744 C0745 C0746 C0747 C0748 C0749 C0750 C0751 C0752 C0753 C0754 C0755 C0756 C0757 C0758 C0759 C0760 C0761 C0762 C0763 C0764 C0765 C0766 C0767 C0768 C0769 C0770 C0771 C0772 C0773 C0774 C0775 C0776 C0777 C0778 C0779 C0780 C0781 C0782 C0783 C0784 C0785 C0786 C0787 C0788 C0789 C0790 C0791 C0792 C0793 C0794 C0795 C0796 C0797 C0798 C0799 C0800 C0801 C0802 C0803 C0804 C0805 C0806 C0807 C0808 C0809 C0810 C0811 C0812 C0813 C0814 C0815 C0816 C0817 C0818 C0819 C0820 C0821 C0822 C0823 C0824 C0825 C0826 C0827 C0828 C0829 C0830 C0831 C0832 C0833 C0834 C0835 C0836 C0837 C0838 C0839 C0840 C0841 C0842 C0843 C0844 C0845 C0846 C0847 C0848 C0849 C0850 C0851 C0852 C0853 C0854 C0855 C0856 C0857 C0858 C0859 C0860 C0861 C0862 C0863 C0864 C0865 C0866 C0867 C0868 C0869 C0870 C0871 C0872 C0873 C0874 C0875 C0876 C0877 C0878 C0879 C0880 C0881 C0882 C0883 C0884 C0885 C0886 C0887 C0888 C0889 C0890 C0891 C0892 C0893 C0894 C0895 C0896 C0897 C0898 C0899 C0900 C0901 C0902 C0903 C0904 C0905 C0906 C0907 C0908 C0909 C0910 C0911 C0912 C0913 C0914 C0915 C0916 C0917 C0918 C0919 C0920 C0921 C0922 C0923 C0924 C0925 C0926 C0927 C0928 C0929 C0930 C0931 C0932 C0933 C0934 C0935 C0936 C0937 C0938 C0939 C0940 C0941 C0942 C0943 C0944 C0945 C0946 C0947 C0948 C0949 C0950 C0951 C0952 C0953 C0954 C0955 C0956 C0957 C0958 C0959 C0960 C0961 C0962 C0963 C0964 C0965 C0966 C0967 C0968 C0969 C0970 C0971 C0972 C0973 C0974 C0975 C0976 C0977 C0978 C0979 C0980 C0981 C0982 C0983 C0984 C0985 C0986 C0987 C0988 C0989 C0990 C0991 C0992 C0993 C0994 C0995 C0996 C0997 C0998 C0999 C01000 C01001 C01002 C01003 C01004 C01005 C01006 C01007 C01008 C01009 C01010 C01011 C01012 C01013 C01014 C01015 C01016 C01017 C01018 C01019 C01020 C01021 C01022 C01023 C01024 C01025 C01026 C01027 C01028 C01029 C01030 C01031 C01032 C01033 C01034 C01035 C01036 C01037 C01038 C01039 C01040 C01041 C01042 C01043 C01044 C01045 C01046 C01047 C01048 C01049 C01050 C01051 C01052 C01053 C01054 C01055 C01056 C01057 C01058 C01059 C01060 C01061 C01062 C01063 C01064 C01065 C01066 C01067 C01068 C01069 C01070 C01071 C01072 C01073 C01074 C01075 C01076 C01077 C01078 C01079 C01080 C01081 C01082 C01083 C01084 C01085 C01086 C01087 C01088 C01089 C01090 C01091 C01092 C01093 C01094 C01095 C01096 C01097 C01098 C01099 C01100 C01101 C01102 C01103 C01104 C01105 C01106 C01107 C01108 C01109 C01110 C01111 C01112 C01113 C01114 C01115 C01116 C01117 C01118 C01119 C01120 C01121 C01122 C01123 C01124 C01125 C01126 C01127 C01128 

syms t

p = [ka_1_J1,ka_2_J2,ka_3_J3,ka_4_J4,kd_4_J4,ka_5_J5,kd_5_J5,ka_6_J6,kd_6_J6,ka_7_J7,kd_7_J7,ka_8_J8,ka_9_J9,ka_10_J10,ka_11_J11,ka_12_J12,ka_13_J13,ka_14_J14,ka_15_J15,ka_16_J16,ka_17_J17,ka_18_J18,kd_18_J18,ka_19_J19,ka_20_J20,ka_21_J21,ka_22_J22,ka_23_J23,ka_24_J24,ka_25_J25,ka_26_J26,ka_27_J27,ka_28_J28,ka_29_J29,ka_30_J30,ka_31_J31,ka_32_J32,ka_33_J33,ka_34_J34,ka_35_J35,kd_35_J35,ka_36_J36,kd_36_J36,ka_37_J37,kd_37_J37,ka_38_J38,kd_38_J38,ka_39_J39,kd_39_J39,ka_40_J40,ka_41_J41,ka_42_J42,ka_43_J43,ka_44_J44,ka_45_J45,ka_46_J46,ka_47_J47,ka_48_J48,ka_49_J49,ka_50_J50,ka_51_J51,ka_52_J52,ka_53_J53,ka_54_J54,ka_55_J55,ka_56_J56,ka_57_J57,ka_58_J58,ka_59_J59,kd_59_J59,ka_60_J60,ka_61_J61,ka_62_J62,ka_63_J63,ka_64_J64,ka_65_J65,ka_66_J66,ka_67_J67,ka_68_J68,kd_68_J68,ka_69_J69,kd_69_J69,ka_70_J70,kd_70_J70,ka_71_J71,ka_72_J72,ka_73_J73,ka_74_J74,ka_75_J75,kd_75_J75,ka_76_J76,ka_77_J77,kd_77_J77,ka_78_J78,ka_79_J79,ka_80_J80,ka_81_J81,ka_82_J82,kd_82_J82,ka_83_J83,ka_84_J84,ka_85_J85,ka_86_J86,ka_87_J87,ka_88_J88,kd_88_J88];

k = [mu01,mu02,mu03,mu04,mu05,mu06,mu07,mu08,mu09,mu010,mu011,mu012,mu013,mu014,mu015,mu016,mu017,mu018,mu019,mu020,mu021,mu022,mu023,mu024,mu025,mu026,mu027,mu028,mu029,mu030,mu031,mu032,mu033,mu034,mu035,mu036,mu037,mu038,mu039,mu040,mu041,mu042,mu043,mu044,mu045,mu046,mu047,C01,C02,C03,C04,C05,C06,C07,C08,C09,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029,C030,C031,C032,C033,C034,C035,C036,C037,C038,C039,C040,C041,C042,C043,C044,C045,C046,C047,C048,C049,C050,C051,C052,C053,C054,C055,C056,C057,C058,C059,C060,C061,C062,C063,C064,C065,C066,C067,C068,C069,C070,C071,C072,C073,C074,C075,C076,C077,C078,C079,C080,C081,C082,C083,C084,C085,C086,C087,C088,C089,C090,C091,C092,C093,C094,C095,C096,C097,C098,C099,C0100,C0101,C0102,C0103,C0104,C0105,C0106,C0107,C0108,C0109,C0110,C0111,C0112,C0113,C0114,C0115,C0116,C0117,C0118,C0119,C0120,C0121,C0122,C0123,C0124,C0125,C0126,C0127,C0128,C0129,C0130,C0131,C0132,C0133,C0134,C0135,C0136,C0137,C0138,C0139,C0140,C0141,C0142,C0143,C0144,C0145,C0146,C0147,C0148,C0149,C0150,C0151,C0152,C0153,C0154,C0155,C0156,C0157,C0158,C0159,C0160,C0161,C0162,C0163,C0164,C0165,C0166,C0167,C0168,C0169,C0170,C0171,C0172,C0173,C0174,C0175,C0176,C0177,C0178,C0179,C0180,C0181,C0182,C0183,C0184,C0185,C0186,C0187,C0188,C0189,C0190,C0191,C0192,C0193,C0194,C0195,C0196,C0197,C0198,C0199,C0200,C0201,C0202,C0203,C0204,C0205,C0206,C0207,C0208,C0209,C0210,C0211,C0212,C0213,C0214,C0215,C0216,C0217,C0218,C0219,C0220,C0221,C0222,C0223,C0224,C0225,C0226,C0227,C0228,C0229,C0230,C0231,C0232,C0233,C0234,C0235,C0236,C0237,C0238,C0239,C0240,C0241,C0242,C0243,C0244,C0245,C0246,C0247,C0248,C0249,C0250,C0251,C0252,C0253,C0254,C0255,C0256,C0257,C0258,C0259,C0260,C0261,C0262,C0263,C0264,C0265,C0266,C0267,C0268,C0269,C0270,C0271,C0272,C0273,C0274,C0275,C0276,C0277,C0278,C0279,C0280,C0281,C0282,C0283,C0284,C0285,C0286,C0287,C0288,C0289,C0290,C0291,C0292,C0293,C0294,C0295,C0296,C0297,C0298,C0299,C0300,C0301,C0302,C0303,C0304,C0305,C0306,C0307,C0308,C0309,C0310,C0311,C0312,C0313,C0314,C0315,C0316,C0317,C0318,C0319,C0320,C0321,C0322,C0323,C0324,C0325,C0326,C0327,C0328,C0329,C0330,C0331,C0332,C0333,C0334,C0335,C0336,C0337,C0338,C0339,C0340,C0341,C0342,C0343,C0344,C0345,C0346,C0347,C0348,C0349,C0350,C0351,C0352,C0353,C0354,C0355,C0356,C0357,C0358,C0359,C0360,C0361,C0362,C0363,C0364,C0365,C0366,C0367,C0368,C0369,C0370,C0371,C0372,C0373,C0374,C0375,C0376,C0377,C0378,C0379,C0380,C0381,C0382,C0383,C0384,C0385,C0386,C0387,C0388,C0389,C0390,C0391,C0392,C0393,C0394,C0395,C0396,C0397,C0398,C0399,C0400,C0401,C0402,C0403,C0404,C0405,C0406,C0407,C0408,C0409,C0410,C0411,C0412,C0413,C0414,C0415,C0416,C0417,C0418,C0419,C0420,C0421,C0422,C0423,C0424,C0425,C0426,C0427,C0428,C0429,C0430,C0431,C0432,C0433,C0434,C0435,C0436,C0437,C0438,C0439,C0440,C0441,C0442,C0443,C0444,C0445,C0446,C0447,C0448,C0449,C0450,C0451,C0452,C0453,C0454,C0455,C0456,C0457,C0458,C0459,C0460,C0461,C0462,C0463,C0464,C0465,C0466,C0467,C0468,C0469,C0470,C0471,C0472,C0473,C0474,C0475,C0476,C0477,C0478,C0479,C0480,C0481,C0482,C0483,C0484,C0485,C0486,C0487,C0488,C0489,C0490,C0491,C0492,C0493,C0494,C0495,C0496,C0497,C0498,C0499,C0500,C0501,C0502,C0503,C0504,C0505,C0506,C0507,C0508,C0509,C0510,C0511,C0512,C0513,C0514,C0515,C0516,C0517,C0518,C0519,C0520,C0521,C0522,C0523,C0524,C0525,C0526,C0527,C0528,C0529,C0530,C0531,C0532,C0533,C0534,C0535,C0536,C0537,C0538,C0539,C0540,C0541,C0542,C0543,C0544,C0545,C0546,C0547,C0548,C0549,C0550,C0551,C0552,C0553,C0554,C0555,C0556,C0557,C0558,C0559,C0560,C0561,C0562,C0563,C0564,C0565,C0566,C0567,C0568,C0569,C0570,C0571,C0572,C0573,C0574,C0575,C0576,C0577,C0578,C0579,C0580,C0581,C0582,C0583,C0584,C0585,C0586,C0587,C0588,C0589,C0590,C0591,C0592,C0593,C0594,C0595,C0596,C0597,C0598,C0599,C0600,C0601,C0602,C0603,C0604,C0605,C0606,C0607,C0608,C0609,C0610,C0611,C0612,C0613,C0614,C0615,C0616,C0617,C0618,C0619,C0620,C0621,C0622,C0623,C0624,C0625,C0626,C0627,C0628,C0629,C0630,C0631,C0632,C0633,C0634,C0635,C0636,C0637,C0638,C0639,C0640,C0641,C0642,C0643,C0644,C0645,C0646,C0647,C0648,C0649,C0650,C0651,C0652,C0653,C0654,C0655,C0656,C0657,C0658,C0659,C0660,C0661,C0662,C0663,C0664,C0665,C0666,C0667,C0668,C0669,C0670,C0671,C0672,C0673,C0674,C0675,C0676,C0677,C0678,C0679,C0680,C0681,C0682,C0683,C0684,C0685,C0686,C0687,C0688,C0689,C0690,C0691,C0692,C0693,C0694,C0695,C0696,C0697,C0698,C0699,C0700,C0701,C0702,C0703,C0704,C0705,C0706,C0707,C0708,C0709,C0710,C0711,C0712,C0713,C0714,C0715,C0716,C0717,C0718,C0719,C0720,C0721,C0722,C0723,C0724,C0725,C0726,C0727,C0728,C0729,C0730,C0731,C0732,C0733,C0734,C0735,C0736,C0737,C0738,C0739,C0740,C0741,C0742,C0743,C0744,C0745,C0746,C0747,C0748,C0749,C0750,C0751,C0752,C0753,C0754,C0755,C0756,C0757,C0758,C0759,C0760,C0761,C0762,C0763,C0764,C0765,C0766,C0767,C0768,C0769,C0770,C0771,C0772,C0773,C0774,C0775,C0776,C0777,C0778,C0779,C0780,C0781,C0782,C0783,C0784,C0785,C0786,C0787,C0788,C0789,C0790,C0791,C0792,C0793,C0794,C0795,C0796,C0797,C0798,C0799,C0800,C0801,C0802,C0803,C0804,C0805,C0806,C0807,C0808,C0809,C0810,C0811,C0812,C0813,C0814,C0815,C0816,C0817,C0818,C0819,C0820,C0821,C0822,C0823,C0824,C0825,C0826,C0827,C0828,C0829,C0830,C0831,C0832,C0833,C0834,C0835,C0836,C0837,C0838,C0839,C0840,C0841,C0842,C0843,C0844,C0845,C0846,C0847,C0848,C0849,C0850,C0851,C0852,C0853,C0854,C0855,C0856,C0857,C0858,C0859,C0860,C0861,C0862,C0863,C0864,C0865,C0866,C0867,C0868,C0869,C0870,C0871,C0872,C0873,C0874,C0875,C0876,C0877,C0878,C0879,C0880,C0881,C0882,C0883,C0884,C0885,C0886,C0887,C0888,C0889,C0890,C0891,C0892,C0893,C0894,C0895,C0896,C0897,C0898,C0899,C0900,C0901,C0902,C0903,C0904,C0905,C0906,C0907,C0908,C0909,C0910,C0911,C0912,C0913,C0914,C0915,C0916,C0917,C0918,C0919,C0920,C0921,C0922,C0923,C0924,C0925,C0926,C0927,C0928,C0929,C0930,C0931,C0932,C0933,C0934,C0935,C0936,C0937,C0938,C0939,C0940,C0941,C0942,C0943,C0944,C0945,C0946,C0947,C0948,C0949,C0950,C0951,C0952,C0953,C0954,C0955,C0956,C0957,C0958,C0959,C0960,C0961,C0962,C0963,C0964,C0965,C0966,C0967,C0968,C0969,C0970,C0971,C0972,C0973,C0974,C0975,C0976,C0977,C0978,C0979,C0980,C0981,C0982,C0983,C0984,C0985,C0986,C0987,C0988,C0989,C0990,C0991,C0992,C0993,C0994,C0995,C0996,C0997,C0998,C0999,C01000,C01001,C01002,C01003,C01004,C01005,C01006,C01007,C01008,C01009,C01010,C01011,C01012,C01013,C01014,C01015,C01016,C01017,C01018,C01019,C01020,C01021,C01022,C01023,C01024,C01025,C01026,C01027,C01028,C01029,C01030,C01031,C01032,C01033,C01034,C01035,C01036,C01037,C01038,C01039,C01040,C01041,C01042,C01043,C01044,C01045,C01046,C01047,C01048,C01049,C01050,C01051,C01052,C01053,C01054,C01055,C01056,C01057,C01058,C01059,C01060,C01061,C01062,C01063,C01064,C01065,C01066,C01067,C01068,C01069,C01070,C01071,C01072,C01073,C01074,C01075,C01076,C01077,C01078,C01079,C01080,C01081,C01082,C01083,C01084,C01085,C01086,C01087,C01088,C01089,C01090,C01091,C01092,C01093,C01094,C01095,C01096,C01097,C01098,C01099,C01100,C01101,C01102,C01103,C01104,C01105,C01106,C01107,C01108,C01109,C01110,C01111,C01112,C01113,C01114,C01115,C01116,C01117,C01118,C01119,C01120,C01121,C01122,C01123,C01124,C01125,C01126,C01127,C01128];

if nargin > 0
   f0_user = varargin{1};
   if ~isnumeric(f0_user)
      p_user = setdiff(symvar(f0_user),p);
      % ADDITIONAL PARAMETERS IN INITIAL CONDITIONS
      p = [p,p_user];
   end
else
end
% INPUT 

u = sym.empty(0,0);

% SYSTEM EQUATIONS

xdot = sym(zeros(size(x)));

xdot(1) = ka_1_J1*mu_4 - ka_3_J3*mu_1 + kd_18_J18*mu_3 - ka_18_J18*mu_1*mu_2;
xdot(2) = kd_18_J18*mu_3 - ka_18_J18*mu_1*mu_2;
xdot(3) = ka_18_J18*mu_1*mu_2 - kd_18_J18*mu_3 - ka_8_J8*mu_3 - ka_19_J19*mu_3*mu_6;
xdot(4) = ka_2_J2 - ka_1_J1*mu_4;
xdot(5) = ka_4_J4 + ka_22_J22*mu_11 - kd_4_J4*mu_5 - ka_85_J85*mu_5*mu_42 - ka_20_J20*mu_5*mu_7*mu_9 - ka_33_J33*mu_5*mu_7*mu_20;
xdot(6) = ka_5_J5 - kd_5_J5*mu_6 - ka_19_J19*mu_3*mu_6;
xdot(7) = ka_6_J6 + ka_22_J22*mu_11 - kd_6_J6*mu_7 + ka_53_J53*mu_10*mu_24 - ka_20_J20*mu_5*mu_7*mu_9 - ka_33_J33*mu_5*mu_7*mu_20;
xdot(8) = ka_7_J7 - kd_7_J7*mu_8 - 2*ka_23_J23*mu_8^2*mu_12;
xdot(9) = ka_19_J19*mu_3*mu_6 - ka_9_J9*mu_9 + ka_53_J53*mu_10*mu_24 - ka_20_J20*mu_5*mu_7*mu_9;
xdot(10) = ka_20_J20*mu_5*mu_7*mu_9 - ka_21_J21*mu_10 - ka_53_J53*mu_10*mu_24 - ka_10_J10*mu_10;
xdot(11) = ka_21_J21*mu_10 - ka_22_J22*mu_11;
xdot(12) = ka_22_J22*mu_11 - ka_23_J23*mu_8^2*mu_12;
xdot(13) = ka_23_J23*mu_8^2*mu_12 - ka_24_J24*mu_13;
xdot(14) = ka_24_J24*mu_13 - ka_11_J11*mu_14 + ka_29_J29*mu_19 + ka_32_J32*mu_20 - ka_25_J25*mu_14*mu_15 - ka_27_J27*mu_14*mu_38;
xdot(15) = ka_37_J37 + ka_67_J67*mu_35 - kd_37_J37*mu_15 - ka_25_J25*mu_14*mu_15 - ka_26_J26*mu_15*mu_16 - ka_30_J30*mu_15*mu_17 - ka_86_J86*mu_15*mu_42;
xdot(16) = ka_25_J25*mu_14*mu_15 - ka_12_J12*mu_16 - ka_26_J26*mu_15*mu_16 - ka_31_J31*mu_16*mu_38;
xdot(17) = ka_27_J27*mu_14*mu_38 - ka_14_J14*mu_17 - ka_28_J28*mu_17*mu_38 - ka_30_J30*mu_15*mu_17;
xdot(18) = ka_26_J26*mu_15*mu_16 - ka_13_J13*mu_18;
xdot(19) = ka_28_J28*mu_17*mu_38 - ka_29_J29*mu_19 - ka_15_J15*mu_19;
xdot(20) = ka_30_J30*mu_15*mu_17 - ka_32_J32*mu_20 - ka_16_J16*mu_20 + ka_31_J31*mu_16*mu_38 - ka_33_J33*mu_5*mu_7*mu_20;
xdot(21) = ka_33_J33*mu_5*mu_7*mu_20 - ka_17_J17*mu_21;
xdot(22) = ka_35_J35 + ka_52_J52*mu_23 - kd_35_J35*mu_22 - ka_34_J34*mu_21*mu_22 - ka_51_J51*mu_10*mu_22;
xdot(23) = ka_34_J34*mu_21*mu_22 - ka_52_J52*mu_23 - ka_40_J40*mu_23 + ka_51_J51*mu_10*mu_22;
xdot(24) = ka_39_J39 + ka_63_J63*mu_32 - kd_39_J39*mu_24;
xdot(25) = ka_36_J36 - ka_56_J56*mu_25 - kd_36_J36*mu_25 - ka_54_J54*mu_25*mu_26 + ka_55_J55*mu_23*mu_27;
xdot(26) = ka_58_J58*mu_33 - ka_44_J44*mu_26 - ka_59_J59*mu_26 + kd_59_J59*mu_30 - ka_54_J54*mu_25*mu_26;
xdot(27) = ka_61_J61*mu_31 - ka_41_J41*mu_27 + ka_54_J54*mu_25*mu_26 - ka_55_J55*mu_23*mu_27;
xdot(28) = ka_55_J55*mu_23*mu_27 - ka_47_J47*mu_28;
xdot(29) = ka_56_J56*mu_25 - ka_42_J42*mu_29 - ka_60_J60*mu_29*mu_30;
xdot(30) = ka_59_J59*mu_26 - ka_45_J45*mu_30 - kd_59_J59*mu_30 - ka_60_J60*mu_29*mu_30;
xdot(31) = ka_60_J60*mu_29*mu_30 - ka_61_J61*mu_31 - ka_46_J46*mu_31;
xdot(32) = ka_62_J62*mu_29 - ka_48_J48*mu_32;
xdot(33) = ka_57_J57*mu_29 - ka_43_J43*mu_33;
xdot(34) = ka_64_J64*mu_29 - ka_49_J49*mu_34;
xdot(35) = ka_66_J66*mu_29 - ka_50_J50*mu_35;
xdot(36) = ka_75_J75 - kd_75_J75*mu_36 + kd_88_J88*mu_44 - ka_88_J88*mu_36*mu_41;
xdot(37) = ka_38_J38 + ka_65_J65*mu_34 + ka_84_J84*mu_45 - kd_38_J38*mu_37 + kd_82_J82*mu_45 - ka_82_J82*mu_37*mu_42 - ka_83_J83*mu_37*mu_42;
xdot(38) = ka_68_J68 - kd_68_J68*mu_38 - ka_27_J27*mu_14*mu_38 - ka_28_J28*mu_17*mu_38 - ka_31_J31*mu_16*mu_38 - ka_81_J81*mu_38*mu_43;
xdot(39) = ka_69_J69 - kd_69_J69*mu_39 - ka_79_J79*mu_39*mu_41;
xdot(40) = ka_70_J70 - kd_70_J70*mu_40 - ka_80_J80*mu_40*mu_42;
xdot(41) = ka_29_J29*mu_19 + ka_32_J32*mu_20 - ka_71_J71*mu_41 + kd_88_J88*mu_44 + ka_81_J81*mu_38*mu_43 - ka_88_J88*mu_36*mu_41;
xdot(42) = kd_82_J82*mu_45 - ka_72_J72*mu_42 + ka_79_J79*mu_39*mu_41 - ka_82_J82*mu_37*mu_42;
xdot(43) = ka_80_J80*mu_40*mu_42 - ka_73_J73*mu_43;
xdot(44) = ka_88_J88*mu_36*mu_41 - kd_88_J88*mu_44 - ka_76_J76*mu_44;
xdot(45) = ka_82_J82*mu_37*mu_42 - ka_84_J84*mu_45 - kd_82_J82*mu_45 - ka_74_J74*mu_45;
xdot(46) = kd_77_J77 - ka_77_J77*mu_46 - ka_87_J87*mu_42*mu_46;
xdot(47) = ka_87_J87*mu_42*mu_46 - ka_78_J78*mu_47;
% INITIAL CONDITIONS

x0 = sym(zeros(size(x)));

x0(1) = mu01;
x0(2) = mu02;
x0(3) = mu03;
x0(4) = mu04;
x0(5) = mu05;
x0(6) = mu06;
x0(7) = mu07;
x0(8) = mu08;
x0(9) = mu09;
x0(10) = mu010;
x0(11) = mu011;
x0(12) = mu012;
x0(13) = mu013;
x0(14) = mu014;
x0(15) = mu015;
x0(16) = mu016;
x0(17) = mu017;
x0(18) = mu018;
x0(19) = mu019;
x0(20) = mu020;
x0(21) = mu021;
x0(22) = mu022;
x0(23) = mu023;
x0(24) = mu024;
x0(25) = mu025;
x0(26) = mu026;
x0(27) = mu027;
x0(28) = mu028;
x0(29) = mu029;
x0(30) = mu030;
x0(31) = mu031;
x0(32) = mu032;
x0(33) = mu033;
x0(34) = mu034;
x0(35) = mu035;
x0(36) = mu036;
x0(37) = mu037;
x0(38) = mu038;
x0(39) = mu039;
x0(40) = mu040;
x0(41) = mu041;
x0(42) = mu042;
x0(43) = mu043;
x0(44) = mu044;
x0(45) = mu045;
x0(46) = mu046;
x0(47) = mu047;

% OBSERVABLES

y = sym(zeros(1,1));

y(1) = mu_39 + mu_42;

% SYSTEM STRUCT

model.sym.nmx = 0;
model.sym.x = x;
model.sym.u = u;
model.sym.xdot = xdot;
model.sym.p = p;
model.sym.k = k;
model.sym.x0 = x0;
model.sym.y = y;
% Additional fields for the prespecified length of kappa
model.sym.nk1 = 1175;
end
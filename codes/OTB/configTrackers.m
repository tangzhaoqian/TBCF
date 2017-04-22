function trackers=configTrackers(benchmark)

trackersVIVID={struct('name','VR','namePaper','VR-V'),...%gray-25%
    struct('name','TM','namePaper','TM-V'),...%dark red
    struct('name','RS','namePaper','RS-V'),...%orange
    struct('name','PD','namePaper','PD-V'),...%Turquoise
    struct('name','MS','namePaper','MS-V')%purple
};

trackers1={struct('name','CT','namePaper','CT'),...
    struct('name','TLD','namePaper','TLD'),...    
    struct('name','IVT','namePaper','IVT'),...
    struct('name','DFT','namePaper','DFT'),...%yellow
    struct('name','ASLA','namePaper','ASLA'),...
    struct('name','L1APG','namePaper','L1APG'),...    
    struct('name','ORIA','namePaper','ORIA'),...
    struct('name','MTT','namePaper','MTT'),...
    struct('name','CSK','namePaper','CSK'),...
    struct('name','SCM','namePaper','SCM'),...
    struct('name','LOT','namePaper','LOT')};

trackersEXE={ struct('name','CPF','namePaper','CPF'),...
    struct('name','Struck','namePaper','Struck'),...
    struct('name','MIL','namePaper','MIL'),...
    struct('name','OAB','namePaper','OAB'),...
    struct('name','SBT','namePaper','SemiT'),...
    struct('name','BSBT','namePaper','BSBT'),...
    struct('name','Frag','namePaper','Frag'),...
    struct('name','KMS','namePaper','KMS'),...
    struct('name','SMS','namePaper','SMS'),...
    struct('name','LSK','namePaper','LSK'),...
    struct('name','VTS','namePaper','VTS'),...
    struct('name','VTD','namePaper','VTD'),...
    struct('name','CXT','namePaper','CXT')};

trackersECCV = { struct('name','ASLA','namePaper','ASLA'),....
        struct('name','CSK','namePaper','CSK'),...
        struct('name','KCF_LinearHog','namePaper','DCF'),...
        struct('name','DSST','namePaper','DSST'),...
        struct('name','IVT','namePaper','IVT'),...
        struct('name','KCF_GaussHog','namePaper','KCF'),...
        struct('name','MEEM','namePaper','MEEM'),...
        struct('name','KCF_LinearGray','namePaper','MOSSE'),...
        struct('name','MUSTER','namePaper','MUSTer'),...
        struct('name','OAB','namePaper','OAB'),...
        struct('name','SAMF','namePaper','SAMF'),...
        struct('name','SRDCF','namePaper','SRDCF'),...
        struct('name','Struck','namePaper','Struck'),...
        struct('name','TLD','namePaper','TLD'),...
        struct('name','TGPR','namePaper','TGPR'),...
        struct('name','LCT','namePaper','LCT'),...
        struct('name','Staple','namePaper','Staple')}; 
    
trackersDeep= {struct('name','GOTURN','namePaper','GOTURN'),...
        struct('name','DeepSRDCF','namePaper','DeepSRDCF'),...
        struct('name','SRDCFdecon','namePaper','SRDCFdecon'),...
        struct('name','HDT','namePaper','HDT'),...
        struct('name','CF2','namePaper','CF2'),...
        struct('name','CNN-SVM','namePaper','CNN-SVM')};

trackersDeepOTB2013 = {struct('name','DLSSVM','namePaper','DLSSVM'),...
        struct('name','FCNT','namePaper','FCNT'),...
        struct('name','SCT4','namePaper','SCT4'),...
        struct('name','SCT6','namePaper','SCT6'),...
        struct('name','SiamFC','namePaper','SiamFC'),...
        struct('name','SiamFC_3s','namePaper','SiamFC_3s'),...
        struct('name','SINT','namePaper','SINT'),...
        struct('name','SINT_flow','namePaper','SINT+'),...
        struct('name','Scale_DLSSVM','namePaper','DLSSVM_scale')};
        
trackerOTB100 = {struct('name','PartNet','namePaper','PartNet'),...
    struct('name','LCT','namePaper','LCT'),...
    struct('name','KCF_GaussHog','namePaper','KCF'),...
    struct('name','TGPR','namePaper','TGPR'),...
    struct('name','Staple','namePaper','Staple'),...
    struct('name','MEEM','namePaper','MEEM'),...
    struct('name','CNN-SVM','namePaper','CNN-SVM'),...
    struct('name','DLSSVM','namePaper','DLSSVM'),...
    struct('name','GOTURN','namePaper','GOTURN'),...
    struct('name','SAMF','namePaper','SAMF'),...
    struct('name','SiamFC','namePaper','SiamFC'),...
    };
trackerOTB2013 = {struct('name','SINT','namePaper','SINT'),...
    struct('name','FCNT','namePaper','FCNT'),...
    struct('name','SODLT','namePaper','SO-DLT'),...
    };
    
switch benchmark
    case 'OTB2013'
        trackers = [trackersECCV, trackersDeep, trackersDeepOTB2013];
        trackers = [trackerOTB2013, trackerOTB100];
    case 'OTB100'
        trackers = [trackersECCV, trackersDeep];
        trackers = trackerOTB100;
end
% Correlation Filters Trackers
trackers = {struct('name','MUSTER','namePaper','MUSTer'),...
            struct('name','SAMF','namePaper','SAMF'),...
            struct('name','CSK','namePaper','CSK'),...
            struct('name','KCF_LinearHog','namePaper','DCF'),...
            struct('name','KCF_GaussHog','namePaper','KCF'),...
            struct('name','KCF_LinearGray','namePaper','MOSSE'),...
            struct('name','LCT','namePaper','LCT'),...
            struct('name','Staple','namePaper','Staple'),...
            struct('name','SRDCF','namePaper','SRDCF'),...
            struct('name','SRDCFdecon','namePaper','SRDCFdecon'),...
            struct('name','HDT','namePaper','HDT'),...
            struct('name','CF2','namePaper','CF2'),...
            struct('name','DSST','namePaper','DSST'),...
            struct('name','RPT','namePaper','RPT'),...
            struct('name','SAMF_AT','namePaper','SAMF+AT'),...
            struct('name','CF_MT','namePaper','KCF+MT'),...
            struct('name','fDSST','namePaper','fDSST'),...
            struct('name','CN','namePaper','CN'),...
            struct('name','SCT4','namePaper','SCT4'),...
            struct('name','DPCF','namePaper','DPCF'),...
            struct('name','KCFDP','namePaper','KCFDP'),...
            struct('name','KCFDPT','namePaper','KCFDPT'),...
            struct('name','OCT_KCF','namePaper','OCT-KCF'),...
            struct('name','CCT','namePaper','CCT'),...
            struct('name','SWCF','namePaper','SWCF'),...
            struct('name','SKSCF','namePaper','SCF'),...
            struct('name','STAPLE_CA','namePaper','Staple+CA'),...
            struct('name','DCFNet','namePaper','DCFNet'),...
            struct('name','CCOT','namePaper','C-COT'),...
            struct('name','MRCT','namePaper','MRCT'),...
    };
.class public Lorg/ajwcc/pduUtils/gsm3040/PduUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADDRESS_NUMBER_PLAN_ID_MASK:I = 0xf

.field public static final ADDRESS_NUMBER_PLAN_ID_TELEPHONE:I = 0x1

.field public static final ADDRESS_NUMBER_PLAN_ID_UNKNOWN:I = 0x0

.field public static final ADDRESS_TYPE_ALPHANUMERIC:I = 0x50

.field public static final ADDRESS_TYPE_INTERNATIONAL:I = 0x10

.field public static final ADDRESS_TYPE_MASK:I = 0x70

.field public static final ADDRESS_TYPE_UNKNOWN:I = 0x0

.field public static final DCS_CODING_GROUP_DATA:I = 0xf0

.field public static final DCS_CODING_GROUP_GENERAL:I = 0xc0

.field public static final DCS_CODING_GROUP_MASK:I = 0xf

.field public static final DCS_ENCODING_7BIT:I = 0x0

.field public static final DCS_ENCODING_8BIT:I = 0x4

.field public static final DCS_ENCODING_MASK:I = 0xf3

.field public static final DCS_ENCODING_UCS2:I = 0x8

.field public static final DCS_MESSAGE_CLASS_FLASH:I = 0x10

.field public static final DCS_MESSAGE_CLASS_MASK:I = 0xec

.field public static final DCS_MESSAGE_CLASS_ME:I = 0x11

.field public static final DCS_MESSAGE_CLASS_NONE:I = 0x0

.field public static final DCS_MESSAGE_CLASS_SIM:I = 0x12

.field public static final DCS_MESSAGE_CLASS_TE:I = 0x13

.field public static final TP_MMS_MASK:I = 0xfb

.field public static final TP_MMS_MORE_MESSAGES:I = 0x4

.field public static final TP_MMS_NO_MESSAGES:I = 0x0

.field public static final TP_MTI_MASK:I = 0xfc

.field public static final TP_MTI_SMS_DELIVER:I = 0x0

.field public static final TP_MTI_SMS_STATUS_REPORT:I = 0x2

.field public static final TP_MTI_SMS_SUBMIT:I = 0x1

.field public static final TP_RD_ACCEPT_DUPLICATES:I = 0x0

.field public static final TP_RD_MASK:I = 0xfb

.field public static final TP_RD_REJECT_DUPLICATES:I = 0x4

.field public static final TP_SRI_MASK:I = 0xdf

.field public static final TP_SRI_NO_REPORT:I = 0x0

.field public static final TP_SRI_REPORT:I = 0x20

.field public static final TP_SRR_MASK:I = 0xdf

.field public static final TP_SRR_NO_REPORT:I = 0x0

.field public static final TP_SRR_REPORT:I = 0x20

.field public static final TP_UDHI_MASK:I = 0xbf

.field public static final TP_UDHI_NO_UDH:I = 0x0

.field public static final TP_UDHI_WITH_UDH:I = 0x40

.field public static final TP_VPF_INTEGER:I = 0x10

.field public static final TP_VPF_MASK:I = 0xe7

.field public static final TP_VPF_NONE:I = 0x0

.field public static final TP_VPF_TIMESTAMP:I = 0x18

.field private static final extAlphabet:[C

.field private static final extBytes:[Ljava/lang/String;

.field private static final grcAlphabetRemapping:[[C

.field private static final stdAlphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x2

    .line 31
    const/16 v0, 0x45

    new-array v0, v0, [[C

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [C

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v3, [C

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [C

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [C

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [C

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [C

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [C

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    const/16 v1, 0xb

    new-array v2, v3, [C

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [C

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [C

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [C

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [C

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [C

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [C

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [C

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [C

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [C

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [C

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [C

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [C

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [C

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [C

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [C

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [C

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [C

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [C

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [C

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [C

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [C

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [C

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [C

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [C

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [C

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [C

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [C

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [C

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [C

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [C

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [C

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [C

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [C

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [C

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [C

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [C

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [C

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [C

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [C

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [C

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [C

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [C

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [C

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [C

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [C

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [C

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [C

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [C

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [C

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [C

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [C

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [C

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [C

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [C

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [C

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [C

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [C

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    sput-object v0, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->grcAlphabetRemapping:[[C

    .line 102
    new-array v0, v4, [C

    fill-array-data v0, :array_45

    sput-object v0, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extAlphabet:[C

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "1b0a"

    aput-object v1, v0, v5

    const-string/jumbo v1, "1b14"

    aput-object v1, v0, v6

    const-string/jumbo v1, "1b28"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1b29"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "1b2f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "1b3c"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "1b3d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "1b3e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "1b40"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "1b65"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extBytes:[Ljava/lang/String;

    .line 169
    const/16 v0, 0x80

    new-array v0, v0, [C

    fill-array-data v0, :array_46

    sput-object v0, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stdAlphabet:[C

    return-void

    .line 31
    :array_0
    .array-data 0x2
        0x86t 0x3t
        0x41t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x88t 0x3t
        0x45t 0x0t
    .end array-data

    :array_2
    .array-data 0x2
        0x89t 0x3t
        0x48t 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0x8at 0x3t
        0x49t 0x0t
    .end array-data

    :array_4
    .array-data 0x2
        0x8ct 0x3t
        0x4ft 0x0t
    .end array-data

    :array_5
    .array-data 0x2
        0x8et 0x3t
        0x59t 0x0t
    .end array-data

    :array_6
    .array-data 0x2
        0x8ft 0x3t
        0xa9t 0x3t
    .end array-data

    :array_7
    .array-data 0x2
        0x90t 0x3t
        0x49t 0x0t
    .end array-data

    :array_8
    .array-data 0x2
        0x91t 0x3t
        0x41t 0x0t
    .end array-data

    :array_9
    .array-data 0x2
        0x92t 0x3t
        0x42t 0x0t
    .end array-data

    :array_a
    .array-data 0x2
        0x93t 0x3t
        0x93t 0x3t
    .end array-data

    :array_b
    .array-data 0x2
        0x94t 0x3t
        0x94t 0x3t
    .end array-data

    :array_c
    .array-data 0x2
        0x95t 0x3t
        0x45t 0x0t
    .end array-data

    :array_d
    .array-data 0x2
        0x96t 0x3t
        0x5at 0x0t
    .end array-data

    :array_e
    .array-data 0x2
        0x97t 0x3t
        0x48t 0x0t
    .end array-data

    :array_f
    .array-data 0x2
        0x98t 0x3t
        0x98t 0x3t
    .end array-data

    :array_10
    .array-data 0x2
        0x99t 0x3t
        0x49t 0x0t
    .end array-data

    :array_11
    .array-data 0x2
        0x9at 0x3t
        0x4bt 0x0t
    .end array-data

    :array_12
    .array-data 0x2
        0x9bt 0x3t
        0x9bt 0x3t
    .end array-data

    :array_13
    .array-data 0x2
        0x9ct 0x3t
        0x4dt 0x0t
    .end array-data

    :array_14
    .array-data 0x2
        0x9dt 0x3t
        0x4et 0x0t
    .end array-data

    :array_15
    .array-data 0x2
        0x9et 0x3t
        0x9et 0x3t
    .end array-data

    :array_16
    .array-data 0x2
        0x9ft 0x3t
        0x4ft 0x0t
    .end array-data

    :array_17
    .array-data 0x2
        0xa0t 0x3t
        0xa0t 0x3t
    .end array-data

    :array_18
    .array-data 0x2
        0xa1t 0x3t
        0x50t 0x0t
    .end array-data

    :array_19
    .array-data 0x2
        0xa3t 0x3t
        0xa3t 0x3t
    .end array-data

    :array_1a
    .array-data 0x2
        0xa4t 0x3t
        0x54t 0x0t
    .end array-data

    :array_1b
    .array-data 0x2
        0xa5t 0x3t
        0x59t 0x0t
    .end array-data

    :array_1c
    .array-data 0x2
        0xa6t 0x3t
        0xa6t 0x3t
    .end array-data

    :array_1d
    .array-data 0x2
        0xa7t 0x3t
        0x58t 0x0t
    .end array-data

    :array_1e
    .array-data 0x2
        0xa8t 0x3t
        0xa8t 0x3t
    .end array-data

    :array_1f
    .array-data 0x2
        0xa9t 0x3t
        0xa9t 0x3t
    .end array-data

    :array_20
    .array-data 0x2
        0xaat 0x3t
        0x49t 0x0t
    .end array-data

    :array_21
    .array-data 0x2
        0xabt 0x3t
        0x59t 0x0t
    .end array-data

    :array_22
    .array-data 0x2
        0xact 0x3t
        0x41t 0x0t
    .end array-data

    :array_23
    .array-data 0x2
        0xadt 0x3t
        0x45t 0x0t
    .end array-data

    :array_24
    .array-data 0x2
        0xaet 0x3t
        0x48t 0x0t
    .end array-data

    :array_25
    .array-data 0x2
        0xaft 0x3t
        0x49t 0x0t
    .end array-data

    :array_26
    .array-data 0x2
        0xb0t 0x3t
        0x59t 0x0t
    .end array-data

    :array_27
    .array-data 0x2
        0xb1t 0x3t
        0x41t 0x0t
    .end array-data

    :array_28
    .array-data 0x2
        0xb2t 0x3t
        0x42t 0x0t
    .end array-data

    :array_29
    .array-data 0x2
        0xb3t 0x3t
        0x93t 0x3t
    .end array-data

    :array_2a
    .array-data 0x2
        0xb4t 0x3t
        0x94t 0x3t
    .end array-data

    :array_2b
    .array-data 0x2
        0xb5t 0x3t
        0x45t 0x0t
    .end array-data

    :array_2c
    .array-data 0x2
        0xb6t 0x3t
        0x5at 0x0t
    .end array-data

    :array_2d
    .array-data 0x2
        0xb7t 0x3t
        0x48t 0x0t
    .end array-data

    :array_2e
    .array-data 0x2
        0xb8t 0x3t
        0x98t 0x3t
    .end array-data

    :array_2f
    .array-data 0x2
        0xb9t 0x3t
        0x49t 0x0t
    .end array-data

    :array_30
    .array-data 0x2
        0xbat 0x3t
        0x4bt 0x0t
    .end array-data

    :array_31
    .array-data 0x2
        0xbbt 0x3t
        0x9bt 0x3t
    .end array-data

    :array_32
    .array-data 0x2
        0xbct 0x3t
        0x4dt 0x0t
    .end array-data

    :array_33
    .array-data 0x2
        0xbdt 0x3t
        0x4et 0x0t
    .end array-data

    :array_34
    .array-data 0x2
        0xbet 0x3t
        0x9et 0x3t
    .end array-data

    :array_35
    .array-data 0x2
        0xbft 0x3t
        0x4ft 0x0t
    .end array-data

    :array_36
    .array-data 0x2
        0xc0t 0x3t
        0xa0t 0x3t
    .end array-data

    :array_37
    .array-data 0x2
        0xc1t 0x3t
        0x50t 0x0t
    .end array-data

    :array_38
    .array-data 0x2
        0xc2t 0x3t
        0xa3t 0x3t
    .end array-data

    :array_39
    .array-data 0x2
        0xc3t 0x3t
        0xa3t 0x3t
    .end array-data

    :array_3a
    .array-data 0x2
        0xc4t 0x3t
        0x54t 0x0t
    .end array-data

    :array_3b
    .array-data 0x2
        0xc5t 0x3t
        0x59t 0x0t
    .end array-data

    :array_3c
    .array-data 0x2
        0xc6t 0x3t
        0xa6t 0x3t
    .end array-data

    :array_3d
    .array-data 0x2
        0xc7t 0x3t
        0x58t 0x0t
    .end array-data

    :array_3e
    .array-data 0x2
        0xc8t 0x3t
        0xa8t 0x3t
    .end array-data

    :array_3f
    .array-data 0x2
        0xc9t 0x3t
        0xa9t 0x3t
    .end array-data

    :array_40
    .array-data 0x2
        0xcat 0x3t
        0x49t 0x0t
    .end array-data

    :array_41
    .array-data 0x2
        0xcbt 0x3t
        0x59t 0x0t
    .end array-data

    :array_42
    .array-data 0x2
        0xcct 0x3t
        0x4ft 0x0t
    .end array-data

    :array_43
    .array-data 0x2
        0xcdt 0x3t
        0x59t 0x0t
    .end array-data

    :array_44
    .array-data 0x2
        0xcet 0x3t
        0xa9t 0x3t
    .end array-data

    .line 102
    :array_45
    .array-data 0x2
        0xct 0x0t
        0x5et 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x5ct 0x0t
        0x5bt 0x0t
        0x7et 0x0t
        0x5dt 0x0t
        0x7ct 0x0t
        0xact 0x20t
    .end array-data

    .line 169
    :array_46
    .array-data 0x2
        0x40t 0x0t
        0xa3t 0x0t
        0x24t 0x0t
        0xa5t 0x0t
        0xe8t 0x0t
        0xe9t 0x0t
        0xf9t 0x0t
        0xect 0x0t
        0xf2t 0x0t
        0xc7t 0x0t
        0xat 0x0t
        0xd8t 0x0t
        0xf8t 0x0t
        0xdt 0x0t
        0xc5t 0x0t
        0xe5t 0x0t
        0x94t 0x3t
        0x5ft 0x0t
        0xa6t 0x3t
        0x93t 0x3t
        0x9bt 0x3t
        0xa9t 0x3t
        0xa0t 0x3t
        0xa8t 0x3t
        0xa3t 0x3t
        0x98t 0x3t
        0x9et 0x3t
        0xa0t 0x0t
        0xc6t 0x0t
        0xe6t 0x0t
        0xdft 0x0t
        0xc9t 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0xa4t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0xa1t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0xc4t 0x0t
        0xd6t 0x0t
        0xd1t 0x0t
        0xdct 0x0t
        0xa7t 0x0t
        0xbft 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0xe4t 0x0t
        0xf6t 0x0t
        0xf1t 0x0t
        0xfct 0x0t
        0xe0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToBits(B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1053
    and-int/lit16 v0, p0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 1054
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1058
    :cond_0
    return-object v0
.end method

.method public static byteToPdu(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1063
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1064
    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1067
    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1069
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1070
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToBits([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1034
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1035
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 1037
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    .line 1038
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 1040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1042
    :cond_0
    if-lez v0, :cond_1

    .line 1044
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1046
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1035
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToPdu([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1023
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1024
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1026
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1028
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createAddressType(I)I
    .locals 1
    .parameter

    .prologue
    .line 435
    or-int/lit16 v0, p0, 0x80

    return v0
.end method

.method public static createSwappedBCD(I)I
    .locals 3
    .parameter

    .prologue
    .line 782
    and-int/lit16 v0, p0, 0xff

    div-int/lit8 v0, v0, 0xa

    .line 783
    and-int/lit16 v1, p0, 0xff

    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr v1, v2

    .line 784
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    return v0
.end method

.method public static decode7bitEncoding([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->decode7bitEncoding([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode7bitEncoding([B[B)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 710
    if-nez p0, :cond_0

    move v0, v1

    .line 711
    :goto_0
    if-nez v0, :cond_1

    .line 714
    invoke-static {p1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encodedSeptetsToUnencodedSeptets([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->unencodedSeptetsToString([B)Ljava/lang/String;

    move-result-object v0

    .line 723
    :goto_1
    return-object v0

    .line 710
    :cond_0
    array-length v0, p0

    goto :goto_0

    .line 719
    :cond_1
    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encodedSeptetsToUnencodedSeptets([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->unencodedSeptetsToString([B)Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-static {p1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encodedSeptetsToUnencodedSeptets([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->unencodedSeptetsToString([B)Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static decode8bitEncoding([B[B)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 732
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 733
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    array-length v2, p1

    sub-int/2addr v2, v0

    const-string/jumbo v3, "ISO8859_1"

    invoke-direct {v1, p1, v0, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    .line 732
    :cond_0
    array-length v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 737
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decodeDataCodingScheme(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 620
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDataCodingScheme()I

    move-result v1

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extractDcsEncoding(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 633
    :goto_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDataCodingScheme()I

    move-result v1

    and-int/lit16 v1, v1, -0xc1

    if-nez v1, :cond_0

    .line 635
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDataCodingScheme()I

    move-result v1

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extractDcsClass(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 651
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 623
    :sswitch_0
    const-string/jumbo v1, "7-bit GSM Alphabet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 626
    :sswitch_1
    const-string/jumbo v1, "8-bit encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 629
    :sswitch_2
    const-string/jumbo v1, "UCS2 encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 638
    :pswitch_0
    const-string/jumbo v1, ", (Flash Message)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 641
    :pswitch_1
    const-string/jumbo v1, ", (Class1 ME Message)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 644
    :pswitch_2
    const-string/jumbo v1, ", (Class2 SIM Message)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 647
    :pswitch_3
    const-string/jumbo v1, ", (Class3 TE Message)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 620
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 635
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static decodeFirstOctet(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "First Octet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getFirstOctet()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTpMti()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 537
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid message type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :pswitch_0
    const-string/jumbo v1, "TP-MTI: (SMS-DELIVER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    :goto_0
    const-string/jumbo v1, "TpMms"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 542
    const-string/jumbo v1, "TpMms"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 544
    const-string/jumbo v1, ", TP-MMS: (Has more messages)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    :cond_0
    :goto_1
    const-string/jumbo v1, "TpRd"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 554
    const-string/jumbo v1, "TpRd"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 556
    const-string/jumbo v1, ", TP-RD: (Reject duplicates)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    :cond_1
    :goto_2
    const-string/jumbo v1, "TpVpf"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "TpVpf"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    const-string/jumbo v1, "TpVpf"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->getTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 580
    :cond_2
    :goto_3
    const-string/jumbo v1, "TpSri"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 582
    const-string/jumbo v1, "TpSri"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 584
    const-string/jumbo v1, ", TP-SRI: (Requests Status Report)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    :cond_3
    :goto_4
    const-string/jumbo v1, "TpSrr"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 594
    const-string/jumbo v1, "TpSrr"

    invoke-static {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 596
    const-string/jumbo v1, ", TP-SRR: (Requests Status Report)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->hasTpUdhi()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 606
    const-string/jumbo v1, ", TP-UDHI: (has UDH)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :goto_6
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 531
    :pswitch_1
    const-string/jumbo v1, "TP-MTI: (SMS-STATUS REPORT)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 534
    :pswitch_2
    const-string/jumbo v1, "TP-MTI: (SMS-SUBMIT)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 548
    :cond_5
    const-string/jumbo v1, ", TP-MMS: (has no messages)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 560
    :cond_6
    const-string/jumbo v1, ", TP-RD: (allow duplicates)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 569
    :sswitch_0
    const-string/jumbo v1, ", TP-VPF: (validity format, integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 572
    :sswitch_1
    const-string/jumbo v1, ", TP-VPF: (validity format, timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 575
    :sswitch_2
    const-string/jumbo v1, ", TP-VPF: (validity format, none)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 588
    :cond_7
    const-string/jumbo v1, ", TP-SRI: (No Status Report)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 600
    :cond_8
    const-string/jumbo v1, ", TP-SRR: (No Status Report)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 610
    :cond_9
    const-string/jumbo v1, ", TP-UDHI: (no UDH)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x10 -> :sswitch_0
        0x18 -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUcs2Encoding([B[B)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 745
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 747
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    array-length v2, p1

    sub-int/2addr v2, v0

    const-string/jumbo v3, "UTF-16"

    invoke-direct {v1, p1, v0, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    .line 745
    :cond_0
    array-length v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 751
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encode7bitUserData([B[B)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 684
    if-nez p0, :cond_0

    .line 687
    invoke-static {p1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->unencodedSeptetsToEncodedSeptets([B)[B

    move-result-object v0

    .line 699
    :goto_0
    return-object v0

    .line 693
    :cond_0
    invoke-static {p0, v3}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encodedSeptetsToUnencodedSeptets([BZ)[B

    move-result-object v0

    .line 695
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 696
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 697
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->unencodedSeptetsToEncodedSeptets([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encode8bitUserData(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 658
    :try_start_0
    const-string/jumbo v0, "ISO8859_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 660
    :catch_0
    move-exception v0

    .line 662
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encodeUcs2UserData(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 671
    :try_start_0
    const-string/jumbo v0, "UTF-16BE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 673
    :catch_0
    move-exception v0

    .line 675
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encodedSeptetsToString([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 937
    invoke-static {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encodedSeptetsToUnencodedSeptets([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->unencodedSeptetsToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodedSeptetsToUnencodedSeptets([B)[B
    .locals 1
    .parameter

    .prologue
    .line 949
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encodedSeptetsToUnencodedSeptets([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodedSeptetsToUnencodedSeptets([BZ)[B
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 957
    new-instance v6, Ljava/util/BitSet;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    move v2, v1

    .line 959
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 960
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 962
    mul-int/lit8 v0, v2, 0x8

    add-int/2addr v0, v3

    .line 963
    aget-byte v4, p0, v2

    shl-int v7, v5, v3

    and-int/2addr v4, v7

    if-eqz v4, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 960
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 959
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    :cond_2
    add-int/lit8 v7, v0, 0x1

    .line 967
    div-int/lit8 v2, v7, 0x7

    rem-int/lit8 v0, v7, 0x7

    if-eqz v0, :cond_5

    move v0, v5

    :goto_2
    add-int/2addr v0, v2

    .line 970
    if-nez v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 971
    :cond_3
    new-array v2, v0, [B

    move v4, v1

    .line 972
    :goto_3
    if-ge v4, v0, :cond_7

    move v3, v1

    .line 974
    :goto_4
    const/4 v8, 0x7

    if-ge v3, v8, :cond_6

    .line 976
    add-int/lit8 v8, v7, 0x1

    mul-int/lit8 v9, v4, 0x7

    add-int/2addr v9, v3

    if-le v8, v9, :cond_4

    .line 978
    mul-int/lit8 v8, v4, 0x7

    add-int/2addr v8, v3

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 980
    aget-byte v8, v2, v4

    shl-int v9, v5, v3

    int-to-byte v9, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v4

    .line 974
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    move v0, v1

    .line 967
    goto :goto_2

    .line 972
    :cond_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 985
    :cond_7
    if-eqz p1, :cond_8

    .line 993
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v2, v0

    if-nez v0, :cond_8

    .line 995
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    .line 996
    array-length v3, v0

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1000
    :goto_5
    return-object v0

    :cond_8
    move-object v0, v2

    goto :goto_5
.end method

.method public static extractAddressType(I)I
    .locals 1
    .parameter

    .prologue
    .line 424
    and-int/lit8 v0, p0, 0x70

    return v0
.end method

.method public static extractDcsClass(I)I
    .locals 1
    .parameter

    .prologue
    .line 474
    and-int/lit16 v0, p0, -0xed

    return v0
.end method

.method public static extractDcsCodingGroup(I)I
    .locals 1
    .parameter

    .prologue
    .line 485
    and-int/lit8 v0, p0, -0x10

    return v0
.end method

.method public static extractDcsEncoding(I)I
    .locals 1
    .parameter

    .prologue
    .line 469
    and-int/lit16 v0, p0, -0xf4

    return v0
.end method

.method public static extractDcsFlash(I)I
    .locals 1
    .parameter

    .prologue
    .line 480
    and-int/lit16 v0, p0, -0xed

    return v0
.end method

.method public static extractNumberPlan(I)I
    .locals 1
    .parameter

    .prologue
    .line 429
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static getAddressTypeFor(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 393
    .line 398
    const-string/jumbo v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move v0, v1

    .line 403
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 405
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    const/16 v0, 0x50

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createAddressType(I)I

    move-result v0

    .line 418
    :goto_1
    return v0

    .line 403
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_1
    if-eqz v0, :cond_2

    .line 414
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createAddressType(I)I

    move-result v0

    goto :goto_1

    .line 418
    :cond_2
    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createAddressType(I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static getMultiCharFor(C)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 133
    sparse-switch p0, :sswitch_data_0

    .line 166
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 137
    :sswitch_0
    const-string/jumbo v0, "\'\u000c\'"

    goto :goto_0

    .line 140
    :sswitch_1
    const-string/jumbo v0, "^"

    goto :goto_0

    .line 143
    :sswitch_2
    const-string/jumbo v0, "{"

    goto :goto_0

    .line 146
    :sswitch_3
    const-string/jumbo v0, "}"

    goto :goto_0

    .line 149
    :sswitch_4
    const-string/jumbo v0, "\\"

    goto :goto_0

    .line 152
    :sswitch_5
    const-string/jumbo v0, "["

    goto :goto_0

    .line 155
    :sswitch_6
    const-string/jumbo v0, "~"

    goto :goto_0

    .line 158
    :sswitch_7
    const-string/jumbo v0, "]"

    goto :goto_0

    .line 161
    :sswitch_8
    const-string/jumbo v0, "|"

    goto :goto_0

    .line 164
    :sswitch_9
    const-string/jumbo v0, "\u20ac"

    goto :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x28 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3c -> :sswitch_5
        0x3d -> :sswitch_6
        0x3e -> :sswitch_7
        0x65 -> :sswitch_9
        0xa1 -> :sswitch_8
        0x39b -> :sswitch_1
    .end sparse-switch
.end method

.method public static getNumMultiCharsInSeptets([B)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 893
    move v1, v0

    .line 895
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 897
    aget-byte v2, p0, v0

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_0

    .line 899
    add-int/lit8 v1, v1, 0x1

    .line 895
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_1
    return v1
.end method

.method public static getNumSeptetsForOctets(I)I
    .locals 2
    .parameter

    .prologue
    .line 942
    mul-int/lit8 v0, p0, 0x8

    div-int/lit8 v1, v0, 0x7

    mul-int/lit8 v0, p0, 0x8

    rem-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 495
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 496
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-object v0

    .line 498
    :catch_0
    move-exception v0

    .line 501
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasTpField(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 508
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 509
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_0
    return-object v0

    .line 511
    :catch_0
    move-exception v0

    .line 514
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static pduToBits(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1017
    invoke-static {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->pduToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->bytesToBits([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pduToBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter

    .prologue
    .line 1006
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 1007
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1009
    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1007
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1011
    :cond_0
    return-object v1
.end method

.method public static readBCDNumbers(I[B)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 763
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 764
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 766
    aget-byte v2, p1, v0

    .line 767
    and-int/lit8 v3, v2, 0xf

    .line 768
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 769
    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 770
    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    .line 773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 764
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringToPdu(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 791
    invoke-static {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stringToUnencodedSeptets(Ljava/lang/String;)[B

    move-result-object v0

    .line 792
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->unencodedSeptetsToEncodedSeptets([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->bytesToPdu([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringToUnencodedSeptets(Ljava/lang/String;)[B
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 798
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    move v2, v1

    .line 803
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 805
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v1

    .line 807
    :goto_1
    sget-object v5, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extAlphabet:[C

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 808
    sget-object v5, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extAlphabet:[C

    aget-char v5, v5, v3

    if-ne v5, v4, :cond_0

    .line 813
    :goto_2
    if-eq v3, v6, :cond_1

    .line 815
    sget-object v4, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extBytes:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 816
    add-int/lit8 v0, v0, 0x1

    .line 817
    sget-object v4, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extBytes:[Ljava/lang/String;

    aget-object v3, v4, v3

    const/4 v4, 0x4

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 818
    add-int/lit8 v0, v0, 0x1

    .line 803
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 824
    :goto_4
    sget-object v5, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stdAlphabet:[C

    array-length v5, v5

    if-ge v3, v5, :cond_9

    .line 825
    sget-object v5, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stdAlphabet:[C

    aget-char v5, v5, v3

    if-ne v5, v4, :cond_2

    .line 828
    int-to-byte v5, v3

    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 829
    add-int/lit8 v0, v0, 0x1

    move v5, v3

    move v3, v0

    .line 832
    :goto_5
    if-ne v5, v6, :cond_7

    move v0, v1

    .line 834
    :goto_6
    sget-object v8, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->grcAlphabetRemapping:[[C

    array-length v8, v8

    if-ge v0, v8, :cond_8

    .line 835
    sget-object v8, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->grcAlphabetRemapping:[[C

    aget-object v8, v8, v0

    aget-char v8, v8, v1

    if-ne v8, v4, :cond_3

    .line 838
    sget-object v4, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->grcAlphabetRemapping:[[C

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget-char v4, v4, v5

    .line 841
    :goto_7
    if-eq v0, v6, :cond_5

    move v0, v1

    .line 843
    :goto_8
    sget-object v5, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stdAlphabet:[C

    array-length v5, v5

    if-ge v0, v5, :cond_7

    .line 844
    sget-object v5, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stdAlphabet:[C

    aget-char v5, v5, v0

    if-ne v5, v4, :cond_4

    .line 847
    int-to-byte v0, v0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 848
    add-int/lit8 v0, v3, 0x1

    .line 849
    goto :goto_3

    .line 824
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 834
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 843
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 855
    :cond_5
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 856
    add-int/lit8 v0, v3, 0x1

    goto :goto_3

    .line 861
    :cond_6
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    move v0, v5

    goto :goto_7

    :cond_9
    move v5, v6

    move v3, v0

    goto :goto_5

    :cond_a
    move v3, v6

    goto/16 :goto_2
.end method

.method public static swapNibbles(I)B
    .locals 2
    .parameter

    .prologue
    .line 757
    shl-int/lit8 v0, p0, 0x4

    and-int/lit16 v0, v0, 0xf0

    ushr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static unencodedSeptetsToEncodedSeptets([B)[B
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 872
    .line 873
    array-length v4, p0

    .line 874
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    move v3, v2

    .line 875
    :goto_0
    if-ge v3, v4, :cond_2

    move v0, v2

    .line 876
    :goto_1
    const/4 v6, 0x7

    if-ge v0, v6, :cond_1

    .line 877
    aget-byte v6, p0, v3

    shl-int v7, v1, v0

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    mul-int/lit8 v6, v3, 0x7

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 876
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 875
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 879
    :cond_2
    mul-int/lit8 v0, v4, 0x7

    div-int/lit8 v3, v0, 0x8

    mul-int/lit8 v0, v4, 0x7

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    add-int v6, v3, v0

    .line 880
    new-array v7, v6, [B

    move v4, v2

    .line 881
    :goto_3
    if-ge v4, v6, :cond_6

    move v3, v2

    .line 883
    :goto_4
    const/16 v0, 0x8

    if-ge v3, v0, :cond_5

    .line 885
    aget-byte v8, v7, v4

    mul-int/lit8 v0, v4, 0x8

    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_5
    shl-int/2addr v0, v3

    int-to-byte v0, v0

    or-int/2addr v0, v8

    int-to-byte v0, v0

    aput-byte v0, v7, v4

    .line 883
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_3
    move v0, v2

    .line 879
    goto :goto_2

    :cond_4
    move v0, v2

    .line 885
    goto :goto_5

    .line 881
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 888
    :cond_6
    return-object v7
.end method

.method public static unencodedSeptetsToString([B)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 911
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 912
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 914
    aget-byte v2, p0, v0

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_1

    .line 920
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "1b"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 923
    :goto_1
    sget-object v5, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extBytes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 924
    sget-object v5, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extBytes:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extAlphabet:[C

    aget-char v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 923
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 929
    :cond_1
    sget-object v2, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stdAlphabet:[C

    aget-byte v4, p0, v0

    aget-char v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 912
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v2

    goto :goto_2
.end method

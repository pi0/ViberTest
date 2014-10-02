.class Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final decoder:I
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field private decoderInputTimeout:I
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field private decoderOutputTimeout:I
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field final direct_input:Z
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field final encoder:I
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field private encoderBitRate:I
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field private encoderFrameRate:I
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field private encoderInputTimeout:I
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field private encoderOutputTimeout:I
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field final forcedDecoderType:Ljava/lang/String;
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field final forcedEncoderType:Ljava/lang/String;
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field final forcedOrientation:I
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedOrientation:I

    .line 62
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderInputTimeout:I

    .line 63
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderOutputTimeout:I

    .line 64
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderInputTimeout:I

    .line 65
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderOutputTimeout:I

    .line 66
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderFrameRate:I

    .line 67
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderBitRate:I

    .line 69
    iput p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoder:I

    iput p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    .line 70
    iput-object v2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    .line 72
    const v0, 0x7f000789

    iget v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->direct_input:Z

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedOrientation:I

    .line 62
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderInputTimeout:I

    .line 63
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderOutputTimeout:I

    .line 64
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderInputTimeout:I

    .line 65
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderOutputTimeout:I

    .line 66
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderFrameRate:I

    .line 67
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderBitRate:I

    .line 81
    iput p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    .line 82
    iput p2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoder:I

    .line 83
    iput-object v2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    .line 85
    const v0, 0x7f000789

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->direct_input:Z

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedOrientation:I

    .line 62
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderInputTimeout:I

    .line 63
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderOutputTimeout:I

    .line 64
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderInputTimeout:I

    .line 65
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderOutputTimeout:I

    .line 66
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderFrameRate:I

    .line 67
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderBitRate:I

    .line 88
    iput p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    .line 89
    iput p2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoder:I

    .line 90
    iput-object p3, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    .line 92
    const v0, 0x7f000789

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->direct_input:Z

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedOrientation:I

    .line 62
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderInputTimeout:I

    .line 63
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderOutputTimeout:I

    .line 64
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderInputTimeout:I

    .line 65
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderOutputTimeout:I

    .line 66
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderFrameRate:I

    .line 67
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderBitRate:I

    .line 95
    iput p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    .line 96
    iput p2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoder:I

    .line 97
    iput-object p3, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    .line 99
    const v0, 0x7f000789

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->direct_input:Z

    .line 100
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedOrientation:I

    .line 62
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderInputTimeout:I

    .line 63
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderOutputTimeout:I

    .line 64
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderInputTimeout:I

    .line 65
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderOutputTimeout:I

    .line 66
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderFrameRate:I

    .line 67
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderBitRate:I

    .line 102
    iput p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    .line 103
    iput p2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoder:I

    .line 104
    iput-object p3, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    .line 106
    iput-boolean p5, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->direct_input:Z

    .line 107
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedOrientation:I

    .line 62
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderInputTimeout:I

    .line 63
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderOutputTimeout:I

    .line 64
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderInputTimeout:I

    .line 65
    iput v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderOutputTimeout:I

    .line 66
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderFrameRate:I

    .line 67
    iput v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderBitRate:I

    .line 75
    iput p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoder:I

    iput p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    .line 76
    iput-object p2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    .line 78
    const v0, 0x7f000789

    iget v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->direct_input:Z

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromJSON(Landroid/util/JsonReader;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v14, 0x0

    .line 110
    const/4 v2, -0x1

    .line 111
    const/4 v13, -0x1

    .line 112
    const/4 v3, 0x0

    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v5, 0x0

    .line 116
    const/4 v12, -0x2

    .line 117
    const/4 v11, -0x2

    .line 118
    const/4 v10, -0x2

    .line 119
    const/4 v9, -0x2

    .line 120
    const/4 v8, -0x1

    .line 121
    const/4 v7, -0x1

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 123
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 128
    :try_start_0
    const-string/jumbo v15, "product"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v1

    move/from16 v1, v17

    move/from16 v18, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move/from16 v6, v18

    :goto_1
    move-object v14, v13

    move v13, v11

    move v11, v5

    move-object v5, v7

    move v7, v1

    move/from16 v17, v6

    move v6, v9

    move v9, v3

    move v3, v10

    move v10, v4

    move-object v4, v8

    move v8, v2

    move v2, v12

    move/from16 v12, v17

    .line 158
    goto :goto_0

    .line 130
    :cond_1
    const-string/jumbo v15, "encoder_colorspace"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 131
    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->readIntFromJson(Landroid/util/JsonReader;)I
    invoke-static/range {p0 .. p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$000(Landroid/util/JsonReader;)I

    move-result v2

    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    move/from16 v17, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move/from16 v6, v17

    goto :goto_1

    .line 132
    :cond_2
    const-string/jumbo v15, "decoder_colorspace"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 133
    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->readIntFromJson(Landroid/util/JsonReader;)I
    invoke-static/range {p0 .. p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$000(Landroid/util/JsonReader;)I

    move-result v1

    move-object v13, v14

    move/from16 v17, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move v6, v12

    move v12, v2

    move/from16 v2, v17

    move/from16 v18, v11

    move v11, v1

    move v1, v7

    move-object v7, v5

    move/from16 v5, v18

    goto :goto_1

    .line 134
    :cond_3
    const-string/jumbo v15, "direct_rendering"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    move v3, v9

    move v9, v6

    move v6, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v1

    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    goto :goto_1

    .line 136
    :cond_4
    const-string/jumbo v15, "direct_input"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v6

    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    move/from16 v17, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move/from16 v6, v17

    goto/16 :goto_1

    .line 138
    :cond_5
    const-string/jumbo v15, "encoder_id"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    move/from16 v17, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move/from16 v6, v17

    goto/16 :goto_1

    .line 140
    :cond_6
    const-string/jumbo v15, "decoder_id"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    move/from16 v17, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move/from16 v6, v17

    goto/16 :goto_1

    .line 142
    :cond_7
    const-string/jumbo v15, "encoder_input_timeout"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 143
    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->readIntFromJson(Landroid/util/JsonReader;)I
    invoke-static/range {p0 .. p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$000(Landroid/util/JsonReader;)I

    move-result v1

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move v6, v1

    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    goto/16 :goto_1

    .line 144
    :cond_8
    const-string/jumbo v15, "encoder_output_timeout"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 145
    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->readIntFromJson(Landroid/util/JsonReader;)I
    invoke-static/range {p0 .. p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$000(Landroid/util/JsonReader;)I

    move-result v1

    move v11, v13

    move-object v13, v14

    move/from16 v17, v9

    move v9, v6

    move v6, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move/from16 v3, v17

    move/from16 v18, v7

    move-object v7, v5

    move v5, v1

    move/from16 v1, v18

    goto/16 :goto_1

    .line 146
    :cond_9
    const-string/jumbo v15, "decoder_input_timeout"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 147
    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->readIntFromJson(Landroid/util/JsonReader;)I
    invoke-static/range {p0 .. p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$000(Landroid/util/JsonReader;)I

    move-result v1

    move v10, v3

    move v3, v9

    move v9, v6

    move v6, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v1

    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    goto/16 :goto_1

    .line 148
    :cond_a
    const-string/jumbo v15, "decoder_output_timeout"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 149
    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->readIntFromJson(Landroid/util/JsonReader;)I
    invoke-static/range {p0 .. p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$000(Landroid/util/JsonReader;)I

    move-result v1

    move v9, v6

    move v6, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v1

    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    goto/16 :goto_1

    .line 150
    :cond_b
    const-string/jumbo v15, "encoder_framerate"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 151
    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->readIntFromJson(Landroid/util/JsonReader;)I
    invoke-static/range {p0 .. p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$000(Landroid/util/JsonReader;)I

    move-result v1

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move v6, v12

    move v12, v2

    move v2, v1

    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    goto/16 :goto_1

    .line 152
    :cond_c
    const-string/jumbo v15, "encoder_bitrate"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 153
    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->readIntFromJson(Landroid/util/JsonReader;)I
    invoke-static/range {p0 .. p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$000(Landroid/util/JsonReader;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    move/from16 v17, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move/from16 v6, v17

    goto/16 :goto_1

    .line 155
    :catch_0
    move-exception v1

    .line 156
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "QUIRKS-ex: exception occurred while parsing new entity, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$100(Ljava/lang/String;)V

    :cond_d
    move v1, v7

    move-object v7, v5

    move v5, v11

    move v11, v13

    move-object v13, v14

    move/from16 v17, v12

    move v12, v2

    move v2, v8

    move-object v8, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v6

    move/from16 v6, v17

    goto/16 :goto_1

    .line 159
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 160
    if-eqz v14, :cond_f

    .line 161
    if-eqz v3, :cond_10

    .line 162
    const v3, 0x7fa30c03

    .line 163
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "QUIRKS-ex:  new entity: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, " {enc:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, " dec:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, " eid:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, " did:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, "}"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lorg/webrtc/videoengine/ViEOMXHelper;->access$100(Ljava/lang/String;)V

    .line 165
    new-instance v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    invoke-direct/range {v1 .. v6}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 172
    iput v12, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderInputTimeout:I

    .line 173
    iput v11, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderOutputTimeout:I

    .line 174
    iput v10, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderInputTimeout:I

    .line 175
    iput v9, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoderOutputTimeout:I

    .line 176
    iput v8, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderFrameRate:I

    .line 177
    iput v7, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoderBitRate:I

    .line 178
    move-object/from16 v0, p1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/4 v1, 0x1

    .line 182
    :goto_3
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_3

    :cond_10
    move v3, v13

    goto :goto_2
.end method

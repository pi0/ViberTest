.class public Lcom/viber/voip/messages/controller/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/d;


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:Lcom/viber/jni/LocationInfo;


# direct methods
.method public constructor <init>(JLjava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p3

    move-wide v2, p4

    move-wide/from16 v4, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/messages/controller/b/a;-><init>(Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V

    .line 58
    iput-wide p1, p0, Lcom/viber/voip/messages/controller/b/a;->a:J

    .line 59
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/viber/voip/messages/controller/b/a;-><init>(JLjava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V

    .line 43
    iput-object p3, p0, Lcom/viber/voip/messages/controller/b/a;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/viber/voip/messages/controller/b/a;->c:Ljava/lang/String;

    .line 81
    iput-wide p2, p0, Lcom/viber/voip/messages/controller/b/a;->e:J

    .line 82
    iput-wide p4, p0, Lcom/viber/voip/messages/controller/b/a;->f:J

    .line 83
    iput p6, p0, Lcom/viber/voip/messages/controller/b/a;->g:I

    .line 84
    iput p7, p0, Lcom/viber/voip/messages/controller/b/a;->h:I

    .line 85
    iput-object p8, p0, Lcom/viber/voip/messages/controller/b/a;->i:Lcom/viber/jni/LocationInfo;

    .line 86
    iput p9, p0, Lcom/viber/voip/messages/controller/b/a;->b:I

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/messages/controller/b/a;-><init>(Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V

    .line 74
    iput-object p2, p0, Lcom/viber/voip/messages/controller/b/a;->d:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 150
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;-><init>()V

    .line 151
    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setCount(I)V

    .line 153
    iget v1, p0, Lcom/viber/voip/messages/controller/b/a;->g:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    iget v1, p0, Lcom/viber/voip/messages/controller/b/a;->g:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 155
    :cond_0
    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setType(I)V

    .line 156
    iget v1, p0, Lcom/viber/voip/messages/controller/b/a;->g:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 157
    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 161
    :goto_0
    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    .line 167
    :goto_1
    iget v1, p0, Lcom/viber/voip/messages/controller/b/a;->g:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/controller/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->isRakutenPhone(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 171
    :cond_1
    iget v1, p0, Lcom/viber/voip/messages/controller/b/a;->g:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    .line 172
    :cond_2
    iget v1, p0, Lcom/viber/voip/messages/controller/b/a;->g:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 173
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMimeType(Ljava/lang/String;)V

    .line 175
    :cond_4
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/b/a;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setGroupId(J)V

    .line 176
    iget v1, p0, Lcom/viber/voip/messages/controller/b/a;->b:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationType(I)V

    .line 177
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/b/a;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageToken(J)V

    .line 179
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/controller/b/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/b/a;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRecipientNumber(Ljava/lang/String;)V

    .line 182
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/b/a;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    .line 183
    iget v1, p0, Lcom/viber/voip/messages/controller/b/a;->g:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setFlag(I)V

    .line 184
    iget v1, p0, Lcom/viber/voip/messages/controller/b/a;->h:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 185
    iget-object v1, p0, Lcom/viber/voip/messages/controller/b/a;->i:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLocation(Lcom/viber/jni/LocationInfo;)V

    .line 186
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 188
    return-object v0

    .line 159
    :cond_5
    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    goto :goto_0

    .line 163
    :cond_6
    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setType(I)V

    .line 164
    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/e;
    .locals 4

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/b/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/e;

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/b/a;->a:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/b/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/e;-><init>(JLjava/lang/String;)V

    .line 194
    :goto_0
    return-object v0

    .line 193
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/e;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/b/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/b/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 140
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0, v1, v1}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 142
    const/high16 v1, 0x42c8

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 143
    const/high16 v1, 0x4348

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 144
    return-object v0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    const-string/jumbo v1, "formatted_follow"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/controller/b/a;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 105
    invoke-virtual {v0, p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDownloadId(Ljava/lang/String;)V

    .line 106
    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 107
    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setGroupId(J)V

    .line 108
    invoke-virtual {v0, p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setCount(I)V

    .line 109
    invoke-virtual {v0, p7}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDescription(Ljava/lang/String;)V

    .line 110
    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/controller/b/a;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/controller/b/a;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 128
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 129
    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setObjectId(J)V

    .line 130
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/controller/b/a;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 95
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageGlobalId(I)V

    .line 97
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/controller/b/a;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 117
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 118
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDescription(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 121
    return-object v0
.end method

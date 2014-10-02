.class public Lcom/viber/voip/messages/conversation/publicgroup/be;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Lcom/viber/jni/LocationInfo;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/messages/conversation/publicgroup/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/publicgroup/be;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->b:J

    .line 36
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->Q()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->d:I

    .line 37
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->h:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->M()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->i:[Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/viber/jni/LocationInfo;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->N()I

    move-result v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->O()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->j:Lcom/viber/jni/LocationInfo;

    .line 41
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->P()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->k:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->f:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 63
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->f:J

    .line 64
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    .line 66
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/jni/LocationInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->j:Lcom/viber/jni/LocationInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->j:Lcom/viber/jni/LocationInfo;

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->j:Lcom/viber/jni/LocationInfo;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->j:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0}, Lcom/viber/jni/LocationInfo;->lat()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/viber/jni/LocationInfo;->lat()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->j:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0}, Lcom/viber/jni/LocationInfo;->lng()D

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->j:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v2}, Lcom/viber/jni/LocationInfo;->lng()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 101
    :cond_2
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->j:Lcom/viber/jni/LocationInfo;

    .line 102
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    .line 104
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->e:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    .line 59
    :cond_0
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->i:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->i:[Ljava/lang/String;

    .line 93
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    .line 95
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 69
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 14
    .parameter

    .prologue
    .line 115
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->j:Lcom/viber/jni/LocationInfo;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->i:[Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->h:Ljava/lang/String;

    iget-wide v6, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->f:J

    iget-wide v8, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->g:J

    iget v10, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->d:I

    iget v11, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    iget-wide v12, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->b:J

    invoke-direct/range {v0 .. v13}, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;-><init>(Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJIIJ)V

    .line 119
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v1

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->b:J

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/viber/voip/messages/controller/GroupController;->a(IJLcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;)V

    .line 120
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 122
    :cond_0
    const-string/jumbo v0, "update(): params unchanged, not updating"

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/be;->d(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->g:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 74
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->g:J

    .line 75
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    .line 77
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->h:Ljava/lang/String;

    .line 86
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    .line 88
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 80
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->k:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->k:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/be;->c:I

    .line 111
    :cond_0
    return-void
.end method

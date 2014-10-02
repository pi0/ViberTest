.class public Lcom/viber/voip/messages/conversation/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/messages/conversation/ui/ConversationData;

.field private c:Lcom/viber/voip/messages/conversation/d;

.field private d:Lcom/viber/voip/messages/conversation/v;

.field private e:Lcom/viber/voip/messages/i;

.field private f:Lcom/viber/voip/messages/conversation/ad;

.field private g:Z

.field private h:Lcom/viber/provider/e;

.field private i:Lcom/viber/provider/e;

.field private j:Lcom/viber/voip/messages/conversation/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/w;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ILcom/viber/voip/messages/conversation/ad;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/viber/voip/messages/conversation/x;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/x;-><init>(Lcom/viber/voip/messages/conversation/w;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->h:Lcom/viber/provider/e;

    .line 58
    new-instance v0, Lcom/viber/voip/messages/conversation/y;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/y;-><init>(Lcom/viber/voip/messages/conversation/w;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->i:Lcom/viber/provider/e;

    .line 77
    new-instance v0, Lcom/viber/voip/messages/conversation/z;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/z;-><init>(Lcom/viber/voip/messages/conversation/w;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->j:Lcom/viber/voip/messages/conversation/g;

    .line 92
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/w;->f:Lcom/viber/voip/messages/conversation/ad;

    .line 93
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/w;->e:Lcom/viber/voip/messages/i;

    .line 94
    packed-switch p4, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown conversationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :pswitch_0
    new-instance v0, Lcom/viber/voip/messages/conversation/ae;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/w;->h:Lcom/viber/provider/e;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/viber/voip/messages/conversation/ae;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    .line 98
    new-instance v0, Lcom/viber/voip/messages/conversation/d;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/w;->j:Lcom/viber/voip/messages/conversation/g;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/w;->i:Lcom/viber/provider/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    .line 112
    :goto_0
    return-void

    .line 104
    :pswitch_1
    new-instance v0, Lcom/viber/voip/messages/conversation/c;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/w;->h:Lcom/viber/provider/e;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/viber/voip/messages/conversation/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    .line 105
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/ap;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/w;->j:Lcom/viber/voip/messages/conversation/g;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/w;->i:Lcom/viber/provider/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/publicgroup/ap;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/i;ILcom/viber/voip/messages/conversation/ad;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/viber/voip/messages/conversation/x;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/x;-><init>(Lcom/viber/voip/messages/conversation/w;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->h:Lcom/viber/provider/e;

    .line 58
    new-instance v0, Lcom/viber/voip/messages/conversation/y;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/y;-><init>(Lcom/viber/voip/messages/conversation/w;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->i:Lcom/viber/provider/e;

    .line 77
    new-instance v0, Lcom/viber/voip/messages/conversation/z;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/z;-><init>(Lcom/viber/voip/messages/conversation/w;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->j:Lcom/viber/voip/messages/conversation/g;

    .line 115
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/w;->f:Lcom/viber/voip/messages/conversation/ad;

    .line 116
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/w;->e:Lcom/viber/voip/messages/i;

    .line 117
    packed-switch p3, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown conversationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    new-instance v0, Lcom/viber/voip/messages/conversation/ae;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/w;->h:Lcom/viber/provider/e;

    invoke-direct {v0, p1, p2, v1}, Lcom/viber/voip/messages/conversation/ae;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    .line 121
    new-instance v0, Lcom/viber/voip/messages/conversation/d;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/w;->j:Lcom/viber/voip/messages/conversation/g;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/w;->i:Lcom/viber/provider/e;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/viber/voip/messages/conversation/d;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    .line 134
    :goto_0
    return-void

    .line 127
    :pswitch_1
    new-instance v0, Lcom/viber/voip/messages/conversation/c;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/w;->h:Lcom/viber/provider/e;

    invoke-direct {v0, p1, p2, v1}, Lcom/viber/voip/messages/conversation/c;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    .line 128
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/ap;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/w;->j:Lcom/viber/voip/messages/conversation/g;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/w;->i:Lcom/viber/provider/e;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/ap;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->f:Lcom/viber/voip/messages/conversation/ad;

    return-object v0
.end method

.method private a(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/conversation/v;->a(JJ)V

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/conversation/w;->b(J)V

    .line 223
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/w;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/conversation/w;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/w;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/v;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    return-object v0
.end method

.method private b(J)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/conversation/d;->a(J)V

    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/conversation/v;->a(J)V

    .line 229
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->e()V

    .line 230
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->e()V

    .line 231
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/w;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/w;->m()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/d;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/i;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->e:Lcom/viber/voip/messages/i;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ui/ConversationData;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->b:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    return-object v0
.end method

.method private m()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->o()J

    move-result-wide v0

    .line 215
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/v;->r()J

    move-result-wide v2

    .line 217
    cmp-long v4, v0, v5

    if-eqz v4, :cond_0

    cmp-long v4, v2, v5

    if-eqz v4, :cond_0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/w;->g:Z

    .line 218
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->l()V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->l()V

    .line 139
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/conversation/d;->a(J)V

    .line 308
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v0

    if-gtz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/conversation/v;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/v;->a(Lcom/viber/voip/messages/conversation/an;)V

    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->e:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 272
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/w;->m()V

    .line 273
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/v;->a(Z)V

    .line 296
    return-void
.end method

.method public a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 5
    .parameter

    .prologue
    .line 276
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 277
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v3

    if-gtz v3, :cond_0

    .line 278
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v4, v2}, Lcom/viber/voip/messages/conversation/v;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/conversation/v;->a(Lcom/viber/voip/messages/conversation/an;)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->e:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/controller/x;->a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 283
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/w;->m()V

    .line 284
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/ui/ConversationData;ZZ)Z
    .locals 23
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/conversation/w;->b:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/conversation/w;->b:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 148
    :cond_0
    const/16 v20, 0x1

    .line 149
    if-eqz p2, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/d;->h()V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/v;->h()V

    .line 154
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 155
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->o:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/viber/voip/messages/conversation/w;->a(JJ)V

    .line 209
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viber/voip/messages/conversation/w;->b:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 210
    return v20

    .line 157
    :cond_2
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/messages/conversation/w;->b(J)V

    goto :goto_1

    .line 160
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/conversation/w;->b:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/conversation/w;->b:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 161
    :cond_4
    const/4 v2, 0x1

    .line 162
    if-eqz p2, :cond_5

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/d;->h()V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/v;->h()V

    :cond_5
    move/from16 v20, v2

    .line 168
    new-instance v21, Lcom/viber/voip/messages/conversation/ab;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/ab;-><init>(Lcom/viber/voip/messages/conversation/w;)V

    .line 189
    const/4 v10, 0x0

    .line 190
    const/4 v7, 0x0

    .line 191
    const-string/jumbo v8, ""

    .line 192
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    if-eqz v2, :cond_7

    move-object/from16 v19, p1

    .line 197
    check-cast v19, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    .line 198
    move-object/from16 v0, v19

    iget v7, v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->c:I

    .line 199
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->d:Ljava/lang/String;

    .line 200
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->e:Lcom/viber/jni/PublicGroupInfo;

    .line 201
    if-nez v10, :cond_7

    .line 202
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->b:Landroid/net/Uri;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 203
    :goto_2
    new-instance v2, Lcom/viber/jni/PublicGroupInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->j:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->a:I

    move/from16 v19, v0

    invoke-direct/range {v2 .. v19}, Lcom/viber/jni/PublicGroupInfo;-><init>(IJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;III)V

    move-object v10, v2

    move/from16 v22, v7

    move-object v7, v8

    move/from16 v8, v22

    .line 207
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/conversation/w;->e:Lcom/viber/voip/messages/i;

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    const/4 v9, 0x1

    move-object/from16 v11, v21

    invoke-interface/range {v2 .. v11}, Lcom/viber/voip/messages/controller/x;->a(ILjava/lang/String;JLjava/lang/String;IZLcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/controller/ad;)V

    goto/16 :goto_1

    .line 202
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v22, v8

    move v8, v7

    move-object/from16 v7, v22

    goto :goto_3

    :cond_8
    move/from16 v20, v2

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 234
    const-string/jumbo v0, "destroy"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/w;->a(Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/w;->f:Lcom/viber/voip/messages/conversation/ad;

    .line 236
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->f()V

    .line 237
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->f()V

    .line 238
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/w;->g:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->s()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/viber/voip/messages/conversation/v;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    return-object v0
.end method

.method public f()Lcom/viber/voip/messages/conversation/h;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/d;->e(I)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->u()V

    .line 258
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->m()V

    .line 259
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->v()V

    .line 263
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->n()V

    .line 264
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->o()V

    .line 288
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->p()Z

    move-result v0

    return v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->c:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/w;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->k()V

    .line 314
    :cond_0
    return-void
.end method

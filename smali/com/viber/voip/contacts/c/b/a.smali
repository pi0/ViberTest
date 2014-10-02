.class public Lcom/viber/voip/contacts/c/b/a;
.super Lcom/viber/voip/contacts/c/b/d;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/connection/ConnectionDelegate;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/jni/PhoneControllerWrapper;

.field private c:Lcom/viber/voip/contacts/c/e/a;

.field private d:Lcom/viber/voip/contacts/c/c/a/g;

.field private e:I

.field private f:Lcom/viber/voip/contacts/c/c/d;

.field private g:Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/contacts/c/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/b/d;-><init>()V

    .line 32
    new-instance v0, Lcom/viber/voip/contacts/c/b/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/b/b;-><init>(Lcom/viber/voip/contacts/c/b/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/b/a;->f:Lcom/viber/voip/contacts/c/c/d;

    .line 60
    new-instance v0, Lcom/viber/voip/contacts/c/b/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/b/c;-><init>(Lcom/viber/voip/contacts/c/b/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/b/a;->g:Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;

    .line 73
    new-instance v0, Lcom/viber/voip/contacts/c/e/a;

    invoke-direct {v0, p1}, Lcom/viber/voip/contacts/c/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/b/a;->c:Lcom/viber/voip/contacts/c/e/a;

    .line 74
    new-instance v0, Lcom/viber/voip/contacts/c/c/a/g;

    invoke-direct {v0}, Lcom/viber/voip/contacts/c/c/a/g;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/b/a;->d:Lcom/viber/voip/contacts/c/c/a/g;

    .line 75
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/a;->d:Lcom/viber/voip/contacts/c/c/a/g;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/b/a;->f:Lcom/viber/voip/contacts/c/c/d;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/c/a/g;->a(Lcom/viber/voip/contacts/c/c/d;)V

    .line 76
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/a;->c:Lcom/viber/voip/contacts/c/e/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/e/a;->a()Ljava/util/Set;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/viber/voip/block/i;->a(Ljava/util/Set;)V

    .line 95
    iget-object v1, p0, Lcom/viber/voip/contacts/c/b/a;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/contacts/c/b/a;->e:I

    .line 96
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/b/a;->b()Z

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/viber/voip/contacts/c/b/a;->b:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v3, p0, Lcom/viber/voip/contacts/c/b/a;->e:I

    invoke-virtual {v2, v0, v3, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleBlockList([Ljava/lang/String;IZ)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/b/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/b/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/b/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_block_list_dirty_bit"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 105
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/b/a;)Lcom/viber/jni/PhoneControllerWrapper;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/a;->b:Lcom/viber/jni/PhoneControllerWrapper;

    return-object v0
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_block_list_dirty_bit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/contacts/c/b/a;->b:Lcom/viber/jni/PhoneControllerWrapper;

    .line 81
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/a;->b:Lcom/viber/jni/PhoneControllerWrapper;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/b/a;->g:Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 82
    return-void
.end method

.method public onBlockListReply(I)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/viber/voip/contacts/c/b/a;->e:I

    if-ne v0, p1, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/b/a;->a(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public onConnect()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onConnectionStateChange(I)V
    .locals 0
    .parameter

    .prologue
    .line 58
    return-void
.end method

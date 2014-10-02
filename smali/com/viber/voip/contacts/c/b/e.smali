.class public Lcom/viber/voip/contacts/c/b/e;
.super Lcom/viber/voip/contacts/c/b/d;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:[Lcom/viber/voip/contacts/c/b/d;


# direct methods
.method public varargs constructor <init>(Landroid/os/Handler;[Lcom/viber/voip/contacts/c/b/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/b/d;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/viber/voip/contacts/c/b/e;->a:Landroid/os/Handler;

    .line 13
    iput-object p2, p0, Lcom/viber/voip/contacts/c/b/e;->b:[Lcom/viber/voip/contacts/c/b/d;

    .line 14
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/b/e;)[Lcom/viber/voip/contacts/c/b/d;
    .locals 1
    .parameter

    .prologue
    .line 7
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/e;->b:[Lcom/viber/voip/contacts/c/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 4
    .parameter

    .prologue
    .line 18
    iget-object v1, p0, Lcom/viber/voip/contacts/c/b/e;->b:[Lcom/viber/voip/contacts/c/b/d;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 19
    invoke-virtual {v3, p1}, Lcom/viber/voip/contacts/c/b/d;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public onBlockListReply(I)V
    .locals 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/b/f;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/b/f;-><init>(Lcom/viber/voip/contacts/c/b/e;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public onConnect()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/b/g;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/b/g;-><init>(Lcom/viber/voip/contacts/c/b/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

.method public onConnectionStateChange(I)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/b/h;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/b/h;-><init>(Lcom/viber/voip/contacts/c/b/e;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

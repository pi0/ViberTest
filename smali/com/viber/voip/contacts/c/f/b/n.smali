.class Lcom/viber/voip/contacts/c/f/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/viber/voip/contacts/c/f/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/h;ZII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/n;->d:Lcom/viber/voip/contacts/c/f/b/h;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/c/f/b/n;->a:Z

    iput p3, p0, Lcom/viber/voip/contacts/c/f/b/n;->b:I

    iput p4, p0, Lcom/viber/voip/contacts/c/f/b/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 105
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/n;->d:Lcom/viber/voip/contacts/c/f/b/h;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/h;->a(Lcom/viber/voip/contacts/c/f/b/h;)[Lcom/viber/jni/PhoneControllerDelegateAdapter;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 106
    iget-boolean v4, p0, Lcom/viber/voip/contacts/c/f/b/n;->a:Z

    iget v5, p0, Lcom/viber/voip/contacts/c/f/b/n;->b:I

    iget v6, p0, Lcom/viber/voip/contacts/c/f/b/n;->c:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onShareAddressBookReply(ZII)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

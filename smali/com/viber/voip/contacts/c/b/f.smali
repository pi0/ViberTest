.class Lcom/viber/voip/contacts/c/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/contacts/c/b/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/b/e;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/viber/voip/contacts/c/b/f;->b:Lcom/viber/voip/contacts/c/b/e;

    iput p2, p0, Lcom/viber/voip/contacts/c/b/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/f;->b:Lcom/viber/voip/contacts/c/b/e;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/b/e;->a(Lcom/viber/voip/contacts/c/b/e;)[Lcom/viber/voip/contacts/c/b/d;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 29
    iget v4, p0, Lcom/viber/voip/contacts/c/b/f;->a:I

    invoke-virtual {v3, v4}, Lcom/viber/voip/contacts/c/b/d;->onBlockListReply(I)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

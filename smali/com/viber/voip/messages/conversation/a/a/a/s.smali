.class Lcom/viber/voip/messages/conversation/a/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/ui/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/a/a/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/a/a/r;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/s;->a:Lcom/viber/voip/messages/conversation/a/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/s;->a:Lcom/viber/voip/messages/conversation/a/a/a/r;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

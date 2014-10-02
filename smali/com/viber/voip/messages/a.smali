.class Lcom/viber/voip/messages/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/LocationEditText;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/LocationEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/messages/a;->a:Lcom/viber/voip/messages/LocationEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/a;->a:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getLineCount()I

    move-result v0

    .line 106
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/a;->a:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/a;->a:Lcom/viber/voip/messages/LocationEditText;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/LocationEditText;->a(Lcom/viber/voip/messages/LocationEditText;I)V

    .line 114
    return-void

    .line 108
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/a;->a:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/a;->a:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

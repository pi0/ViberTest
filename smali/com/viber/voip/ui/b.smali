.class Lcom/viber/voip/ui/b;
.super Lcom/viber/voip/messages/ui/du;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/viber/voip/ui/b;->a:Lcom/viber/voip/ui/a;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/du;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    sub-int v0, p5, p3

    .line 64
    iget-object v1, p0, Lcom/viber/voip/ui/b;->a:Lcom/viber/voip/ui/a;

    invoke-static {v1, v0}, Lcom/viber/voip/ui/a;->a(Lcom/viber/voip/ui/a;I)V

    .line 65
    iget-object v1, p0, Lcom/viber/voip/ui/b;->a:Lcom/viber/voip/ui/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "afterLayout, available width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/ui/a;->a(Lcom/viber/voip/ui/a;Ljava/lang/String;)V

    .line 66
    return-void
.end method

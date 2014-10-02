.class Lcom/viber/voip/viberout/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/viberout/d;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/a;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/viberout/b;->a:Lcom/viber/voip/viberout/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSplashConditionsChecked ok:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->a(Ljava/lang/String;)V

    .line 114
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/viberout/b;->a:Lcom/viber/voip/viberout/a;

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->a(Lcom/viber/voip/viberout/a;)V

    .line 115
    :cond_0
    return-void
.end method

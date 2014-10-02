.class abstract Lcom/viber/voip/viberout/promotion/g;
.super Lcom/android/a/a/a;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/viber/voip/viberout/promotion/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/promotion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/viber/voip/viberout/promotion/g;->b:Lcom/viber/voip/viberout/promotion/b;

    invoke-direct {p0}, Lcom/android/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/g;->b:Lcom/viber/voip/viberout/promotion/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected a(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/viber/voip/viberout/promotion/a;->values()[Lcom/viber/voip/viberout/promotion/a;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/g;->a(Lcom/viber/voip/viberout/promotion/a;)Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/viber/voip/viberout/promotion/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/g;->b:Lcom/viber/voip/viberout/promotion/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

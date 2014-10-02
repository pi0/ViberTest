.class Lcom/viber/voip/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/b;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/viber/voip/util/d;->a:Lcom/viber/voip/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/viber/voip/util/d;->a:Lcom/viber/voip/util/b;

    const-string/jumbo v1, "isOnForeground checker. notify LIB BG_BACKGROUND"

    invoke-static {v0, v1}, Lcom/viber/voip/util/b;->a(Lcom/viber/voip/util/b;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/viber/voip/util/d;->a:Lcom/viber/voip/util/b;

    invoke-static {v0, v2}, Lcom/viber/voip/util/b;->a(Lcom/viber/voip/util/b;Z)Z

    .line 44
    iget-object v0, p0, Lcom/viber/voip/util/d;->a:Lcom/viber/voip/util/b;

    invoke-static {v0}, Lcom/viber/voip/util/b;->a(Lcom/viber/voip/util/b;)Lcom/viber/jni/controller/PhoneController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/jni/controller/PhoneController;->handleAppModeChanged(I)V

    .line 45
    iget-object v0, p0, Lcom/viber/voip/util/d;->a:Lcom/viber/voip/util/b;

    iget-object v1, p0, Lcom/viber/voip/util/d;->a:Lcom/viber/voip/util/b;

    invoke-static {v1}, Lcom/viber/voip/util/b;->b(Lcom/viber/voip/util/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/b;->a(Landroid/content/Context;Z)V

    .line 46
    return-void
.end method

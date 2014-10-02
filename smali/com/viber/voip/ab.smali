.class Lcom/viber/voip/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/viber/voip/GCMIntentService;


# direct methods
.method constructor <init>(Lcom/viber/voip/GCMIntentService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/viber/voip/ab;->c:Lcom/viber/voip/GCMIntentService;

    iput-object p2, p0, Lcom/viber/voip/ab;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/viber/voip/ab;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    invoke-interface {p1}, Lcom/viber/jni/controller/PhoneController;->sendKA()V

    .line 38
    invoke-static {}, Lcom/viber/voip/b/a;->a()Lcom/viber/voip/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ab;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/ab;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/b/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    return-void
.end method

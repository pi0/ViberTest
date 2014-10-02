.class Lcom/viber/voip/api/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/api/y;

.field final synthetic b:Lcom/viber/voip/api/ViberUrlHandlerActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/viber/voip/api/d;->b:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    iput-object p2, p0, Lcom/viber/voip/api/d;->a:Lcom/viber/voip/api/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 3
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/voip/api/d;->a:Lcom/viber/voip/api/y;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 156
    return-void
.end method

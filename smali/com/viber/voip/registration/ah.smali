.class Lcom/viber/voip/registration/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ViberApplication;

.field final synthetic b:Lcom/viber/voip/registration/ag;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ag;Lcom/viber/voip/ViberApplication;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/viber/voip/registration/ah;->b:Lcom/viber/voip/registration/ag;

    iput-object p2, p0, Lcom/viber/voip/registration/ah;->a:Lcom/viber/voip/ViberApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/registration/ah;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/e/u;->c()V

    .line 83
    return-void
.end method

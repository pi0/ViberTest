.class Lcom/viber/voip/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerReadyListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/viber/voip/ea;->a:Lcom/viber/voip/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ready(Lcom/viber/jni/controller/PhoneController;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lcom/viber/voip/WelcomeActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ViberApplication initialization Check Registration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/viber/voip/ea;->a:Lcom/viber/voip/WelcomeActivity;

    invoke-static {v0}, Lcom/viber/voip/WelcomeActivity;->a(Lcom/viber/voip/WelcomeActivity;)V

    .line 60
    return-void
.end method

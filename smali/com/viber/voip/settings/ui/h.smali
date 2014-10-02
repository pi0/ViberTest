.class Lcom/viber/voip/settings/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/settings/ui/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/viber/voip/settings/ui/h;->b:Lcom/viber/voip/settings/ui/a;

    iput-boolean p2, p0, Lcom/viber/voip/settings/ui/h;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/viber/voip/settings/ui/h;->a:Z

    invoke-interface {p1, v0}, Lcom/viber/jni/controller/PhoneController;->setEnableVideo(Z)V

    .line 238
    return-void
.end method

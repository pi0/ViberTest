.class final Lcom/viber/voip/util/hf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/viber/voip/util/hf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/util/hf;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/viber/jni/controller/PhoneController;->isRegisteredNumber(Ljava/lang/String;)Z

    .line 128
    return-void
.end method

.class Lcom/viber/voip/messages/controller/t;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/r;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/viber/voip/messages/controller/t;->a:Lcom/viber/voip/messages/controller/r;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPublicGroupMessages(IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/viber/voip/messages/controller/t;->a:Lcom/viber/voip/messages/controller/r;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/r;->c(Lcom/viber/voip/messages/controller/r;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void
.end method

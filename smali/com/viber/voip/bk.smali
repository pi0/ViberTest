.class Lcom/viber/voip/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/bh;


# direct methods
.method constructor <init>(Lcom/viber/voip/bh;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/viber/voip/bk;->b:Lcom/viber/voip/bh;

    iput p2, p0, Lcom/viber/voip/bk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 5
    .parameter

    .prologue
    .line 293
    iget v0, p0, Lcom/viber/voip/bk;->a:I

    sput v0, Lcom/viber/jni/DeviceFlags;->_NSmode:I

    .line 294
    sget v0, Lcom/viber/jni/DeviceFlags;->_AECmode:I

    sget v1, Lcom/viber/jni/DeviceFlags;->_AGCmode:I

    sget v2, Lcom/viber/jni/DeviceFlags;->_NSmode:I

    sget v3, Lcom/viber/jni/DeviceFlags;->_RxAGCmode:I

    sget v4, Lcom/viber/jni/DeviceFlags;->_RxNSmode:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/sound/AbstractSoundService;->setSpeechEnhancementsModes(IIIII)I

    .line 295
    return-void
.end method

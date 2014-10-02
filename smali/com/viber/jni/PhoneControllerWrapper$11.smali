.class Lcom/viber/jni/PhoneControllerWrapper$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback",
        "<",
        "Lcom/viber/jni/controller/PhoneController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerWrapper;

.field final synthetic val$bucket:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$doodleFlag:I

.field final synthetic val$downloadID:Ljava/lang/String;

.field final synthetic val$forwarded:I

.field final synthetic val$largeThumbnail:[B

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$mediaType:I

.field final synthetic val$objID:J

.field final synthetic val$resending:Z

.field final synthetic val$seq:I

.field final synthetic val$thumbnail:[B

.field final synthetic val$toNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 961
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$toNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$thumbnail:[B

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$largeThumbnail:[B

    iput p5, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$mediaType:I

    iput p6, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$seq:I

    iput-wide p7, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$objID:J

    iput-object p9, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$location:Lcom/viber/jni/LocationInfo;

    iput-object p10, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$description:Ljava/lang/String;

    iput p11, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$doodleFlag:I

    iput-boolean p12, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$resending:Z

    iput p13, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$forwarded:I

    iput-object p14, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$downloadID:Ljava/lang/String;

    iput-object p15, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$bucket:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 15
    .parameter

    .prologue
    .line 965
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$toNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$thumbnail:[B

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$largeThumbnail:[B

    iget v4, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$mediaType:I

    iget v5, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$seq:I

    iget-wide v6, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$objID:J

    iget-object v8, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$location:Lcom/viber/jni/LocationInfo;

    iget-object v9, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$description:Ljava/lang/String;

    iget v10, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$doodleFlag:I

    iget-boolean v11, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$resending:Z

    iget v12, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$forwarded:I

    iget-object v13, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$downloadID:Ljava/lang/String;

    iget-object v14, p0, Lcom/viber/jni/PhoneControllerWrapper$11;->val$bucket:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v14}, Lcom/viber/jni/controller/PhoneController;->handleSendMedia(Ljava/lang/String;[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 961
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$11;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

.class Lcom/viber/jni/PhoneControllerWrapper$12;
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

.field final synthetic val$groupId:J

.field final synthetic val$largeThumbnail:[B

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$mediaType:I

.field final synthetic val$msgSeq:I

.field final synthetic val$objId:J

.field final synthetic val$resending:Z

.field final synthetic val$thumbnail:[B


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;J[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 975
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$groupId:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$thumbnail:[B

    iput-object p5, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$largeThumbnail:[B

    iput p6, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$mediaType:I

    iput p7, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$msgSeq:I

    iput-wide p8, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$objId:J

    iput-object p10, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$location:Lcom/viber/jni/LocationInfo;

    iput-object p11, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$description:Ljava/lang/String;

    iput p12, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$doodleFlag:I

    iput-boolean p13, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$resending:Z

    iput p14, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$forwarded:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$downloadID:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$bucket:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 17
    .parameter

    .prologue
    .line 979
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$groupId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$thumbnail:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$largeThumbnail:[B

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$mediaType:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$msgSeq:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$objId:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$location:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$doodleFlag:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$resending:Z

    move-object/from16 v0, p0

    iget v14, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$forwarded:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$downloadID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerWrapper$12;->val$bucket:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v16}, Lcom/viber/jni/controller/PhoneController;->handleSendMediaToGroup(J[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 975
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$12;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

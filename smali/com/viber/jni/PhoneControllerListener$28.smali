.class Lcom/viber/jni/PhoneControllerListener$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction",
        "<",
        "Lcom/viber/jni/PhoneControllerDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerListener;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$clientName:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$downloadID:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$fromNumber:Ljava/lang/String;

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$mediaType:I

.field final synthetic val$messageSeq:I

.field final synthetic val$messageToken:J

.field final synthetic val$thumbnail:[B

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .prologue
    .line 616
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$28;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$messageToken:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$fromNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$thumbnail:[B

    iput-wide p6, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$timeStamp:J

    iput p8, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$flags:I

    iput p9, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$messageSeq:I

    iput-object p10, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$location:Lcom/viber/jni/LocationInfo;

    iput p11, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$mediaType:I

    iput-object p12, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$bucketName:Ljava/lang/String;

    iput-object p13, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$downloadID:Ljava/lang/String;

    iput-object p14, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$clientName:Ljava/lang/String;

    iput-object p15, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 15
    .parameter

    .prologue
    .line 620
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$messageToken:J

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$fromNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$thumbnail:[B

    iget-wide v5, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$timeStamp:J

    iget v7, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$flags:I

    iget v8, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$messageSeq:I

    iget-object v9, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$location:Lcom/viber/jni/LocationInfo;

    iget v10, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$mediaType:I

    iget-object v11, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$bucketName:Ljava/lang/String;

    iget-object v12, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$downloadID:Ljava/lang/String;

    iget-object v13, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$clientName:Ljava/lang/String;

    iget-object v14, p0, Lcom/viber/jni/PhoneControllerListener$28;->val$description:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v14}, Lcom/viber/jni/PhoneControllerDelegate;->onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$28;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

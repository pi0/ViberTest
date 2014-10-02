.class Lcom/viber/jni/PhoneControllerListener$48;
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

.field final synthetic val$DownloadId:Ljava/lang/String;

.field final synthetic val$Flags:I

.field final synthetic val$Name:Ljava/lang/String;

.field final synthetic val$token:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$48;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$48;->val$token:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$48;->val$Name:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/jni/PhoneControllerListener$48;->val$DownloadId:Ljava/lang/String;

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$48;->val$Flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 6
    .parameter

    .prologue
    .line 1075
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$48;->val$token:J

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$48;->val$Name:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/jni/PhoneControllerListener$48;->val$DownloadId:Ljava/lang/String;

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$48;->val$Flags:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegate;->onHandleSelfDetails(JLjava/lang/String;Ljava/lang/String;I)Z

    .line 1076
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1072
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$48;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

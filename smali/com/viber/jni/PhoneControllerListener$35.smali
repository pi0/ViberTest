.class Lcom/viber/jni/PhoneControllerListener$35;
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

.field final synthetic val$deliveredTo:Ljava/lang/String;

.field final synthetic val$groupId:J

.field final synthetic val$msgToken:J

.field final synthetic val$timeDelivered:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JJLjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$35;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$35;->val$groupId:J

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerListener$35;->val$msgToken:J

    iput-object p6, p0, Lcom/viber/jni/PhoneControllerListener$35;->val$deliveredTo:Ljava/lang/String;

    iput-wide p7, p0, Lcom/viber/jni/PhoneControllerListener$35;->val$timeDelivered:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 8
    .parameter

    .prologue
    .line 727
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$35;->val$groupId:J

    iget-wide v3, p0, Lcom/viber/jni/PhoneControllerListener$35;->val$msgToken:J

    iget-object v5, p0, Lcom/viber/jni/PhoneControllerListener$35;->val$deliveredTo:Ljava/lang/String;

    iget-wide v6, p0, Lcom/viber/jni/PhoneControllerListener$35;->val$timeDelivered:J

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerDelegate;->onGroupMessageDelivered(JJLjava/lang/String;J)Z

    .line 728
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$35;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

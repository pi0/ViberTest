.class Lcom/viber/jni/PhoneControllerListener$6;
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

.field final synthetic val$aBVersion:I

.field final synthetic val$ackSequence:I

.field final synthetic val$clearAll:Z

.field final synthetic val$isJoin:Z

.field final synthetic val$joinedName:Ljava/lang/String;

.field final synthetic val$joinedSystem:Ljava/lang/String;

.field final synthetic val$lastPortion:Z

.field final synthetic val$registeredNumbers:Ljava/util/Map;

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)V
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

    .prologue
    .line 279
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$6;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-boolean p2, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$clearAll:Z

    iput-boolean p3, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$lastPortion:Z

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$registeredNumbers:Ljava/util/Map;

    iput p5, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$seq:I

    iput-boolean p6, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$isJoin:Z

    iput-object p7, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$joinedName:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$joinedSystem:Ljava/lang/String;

    iput p9, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$ackSequence:I

    iput p10, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$aBVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 10
    .parameter

    .prologue
    .line 283
    iget-boolean v1, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$clearAll:Z

    iget-boolean v2, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$lastPortion:Z

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$registeredNumbers:Ljava/util/Map;

    iget v4, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$seq:I

    iget-boolean v5, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$isJoin:Z

    iget-object v6, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$joinedName:Ljava/lang/String;

    iget-object v7, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$joinedSystem:Ljava/lang/String;

    iget v8, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$ackSequence:I

    iget v9, p0, Lcom/viber/jni/PhoneControllerListener$6;->val$aBVersion:I

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/viber/jni/PhoneControllerDelegate;->onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z

    .line 285
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$6;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

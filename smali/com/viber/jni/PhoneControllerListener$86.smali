.class Lcom/viber/jni/PhoneControllerListener$86;
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

.field final synthetic val$changeEvents:[Lcom/viber/jni/PublicGroupChangeEvent;

.field final synthetic val$groupId:J

.field final synthetic val$messages:[Lcom/viber/jni/PublicGroupMessage;

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1800
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$86;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$seq:I

    iput-wide p3, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$groupId:J

    iput-object p5, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$messages:[Lcom/viber/jni/PublicGroupMessage;

    iput-object p6, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$changeEvents:[Lcom/viber/jni/PublicGroupChangeEvent;

    iput p7, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 7
    .parameter

    .prologue
    .line 1803
    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$seq:I

    iget-wide v2, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$groupId:J

    iget-object v4, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$messages:[Lcom/viber/jni/PublicGroupMessage;

    iget-object v5, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$changeEvents:[Lcom/viber/jni/PublicGroupChangeEvent;

    iget v6, p0, Lcom/viber/jni/PhoneControllerListener$86;->val$status:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegate;->onGetPublicGroupMessages(IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V

    .line 1804
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1800
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$86;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

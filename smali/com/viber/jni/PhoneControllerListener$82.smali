.class Lcom/viber/jni/PhoneControllerListener$82;
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

.field final synthetic val$chunkNumber:I

.field final synthetic val$groupID:J

.field final synthetic val$isLast:Z

.field final synthetic val$likes:Ljava/util/Map;

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;IIZJLjava/util/Map;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$82;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$seq:I

    iput p3, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$chunkNumber:I

    iput-boolean p4, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$isLast:Z

    iput-wide p5, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$groupID:J

    iput-object p7, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$likes:Ljava/util/Map;

    iput p8, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 8
    .parameter

    .prologue
    .line 1740
    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$seq:I

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$chunkNumber:I

    iget-boolean v3, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$isLast:Z

    iget-wide v4, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$groupID:J

    iget-object v6, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$likes:Ljava/util/Map;

    iget v7, p0, Lcom/viber/jni/PhoneControllerListener$82;->val$status:I

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerDelegate;->onGetPublicGroupLikes(IIZJLjava/util/Map;I)V

    .line 1741
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1737
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$82;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

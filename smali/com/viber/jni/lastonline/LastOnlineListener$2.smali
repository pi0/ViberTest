.class Lcom/viber/jni/lastonline/LastOnlineListener$2;
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
        "Lcom/viber/jni/lastonline/LastOnlineDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/lastonline/LastOnlineListener;

.field final synthetic val$onlineContactInfo:[Lcom/viber/jni/OnlineContactInfo;

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lcom/viber/jni/lastonline/LastOnlineListener;[Lcom/viber/jni/OnlineContactInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/viber/jni/lastonline/LastOnlineListener$2;->this$0:Lcom/viber/jni/lastonline/LastOnlineListener;

    iput-object p2, p0, Lcom/viber/jni/lastonline/LastOnlineListener$2;->val$onlineContactInfo:[Lcom/viber/jni/OnlineContactInfo;

    iput p3, p0, Lcom/viber/jni/lastonline/LastOnlineListener$2;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/lastonline/LastOnlineDelegate;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/jni/lastonline/LastOnlineListener$2;->val$onlineContactInfo:[Lcom/viber/jni/OnlineContactInfo;

    iget v1, p0, Lcom/viber/jni/lastonline/LastOnlineListener$2;->val$seq:I

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/lastonline/LastOnlineDelegate;->onLastOnline([Lcom/viber/jni/OnlineContactInfo;I)V

    .line 40
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/viber/jni/lastonline/LastOnlineDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/lastonline/LastOnlineListener$2;->execute(Lcom/viber/jni/lastonline/LastOnlineDelegate;)V

    return-void
.end method

.class Lcom/viber/voip/messages/conversation/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/az;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/az;->a:Lcom/viber/voip/messages/conversation/ax;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/az;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;Landroid/widget/EditText;)V

    .line 159
    return-void
.end method

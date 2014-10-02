.class Lcom/viber/voip/messages/conversation/publicgroup/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/bf;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bk;->a:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/bf;Lcom/viber/voip/messages/conversation/publicgroup/bg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bk;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/bf;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 481
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bk;->a:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hc;->e(Landroid/content/Context;)V

    .line 482
    return-void
.end method

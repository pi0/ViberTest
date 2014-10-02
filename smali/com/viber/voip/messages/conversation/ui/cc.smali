.class Lcom/viber/voip/messages/conversation/ui/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/cc;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cc;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a()V

    .line 203
    return-void
.end method

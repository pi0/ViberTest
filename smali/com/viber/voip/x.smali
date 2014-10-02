.class Lcom/viber/voip/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/ConversationListView;


# direct methods
.method constructor <init>(Lcom/viber/voip/ConversationListView;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/viber/voip/x;->a:Lcom/viber/voip/ConversationListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/viber/voip/x;->a:Lcom/viber/voip/ConversationListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/ConversationListView;->a(Lcom/viber/voip/ConversationListView;Z)Z

    .line 79
    iget-object v0, p0, Lcom/viber/voip/x;->a:Lcom/viber/voip/ConversationListView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/viber/voip/ConversationListView;->a(Lcom/viber/voip/ConversationListView;I)I

    .line 80
    return-void
.end method

.class Lcom/viber/voip/messages/ui/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/viber/voip/messages/ui/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessagesFragment;Landroid/widget/ListView;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/viber/voip/messages/ui/dc;->d:Lcom/viber/voip/messages/ui/MessagesFragment;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/dc;->a:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/viber/voip/messages/ui/dc;->b:Landroid/view/View;

    iput p4, p0, Lcom/viber/voip/messages/ui/dc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dc;->d:Lcom/viber/voip/messages/ui/MessagesFragment;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/dc;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/dc;->b:Landroid/view/View;

    iget v3, p0, Lcom/viber/voip/messages/ui/dc;->c:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Landroid/widget/ListView;Landroid/view/View;IZ)V

    .line 306
    return-void
.end method

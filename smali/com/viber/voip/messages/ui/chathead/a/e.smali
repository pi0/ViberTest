.class Lcom/viber/voip/messages/ui/chathead/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/e;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/e;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(I)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/e;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(I)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x7f070364
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/viber/voip/messages/ui/chathead/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/k;->a:Lcom/viber/voip/messages/ui/chathead/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/k;->a:Lcom/viber/voip/messages/ui/chathead/a/i;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/i;->c(I)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/k;->a:Lcom/viber/voip/messages/ui/chathead/a/i;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/i;->c(I)V

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/k;->a:Lcom/viber/voip/messages/ui/chathead/a/i;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/i;->c(I)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x7f070365
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

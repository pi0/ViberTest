.class Lcom/viber/voip/messages/extras/twitter/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;JLjava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/j;->e:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    iput-wide p2, p0, Lcom/viber/voip/messages/extras/twitter/j;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/extras/twitter/j;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/messages/extras/twitter/j;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/viber/voip/messages/extras/twitter/j;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/j;->e:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->a(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;)Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/j;->e:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    iget-wide v2, p0, Lcom/viber/voip/messages/extras/twitter/j;->a:J

    iget-object v4, p0, Lcom/viber/voip/messages/extras/twitter/j;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/twitter/j;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/messages/extras/twitter/j;->d:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/twitter/l;->b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    return-void
.end method

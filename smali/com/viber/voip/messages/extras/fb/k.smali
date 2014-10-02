.class Lcom/viber/voip/messages/extras/fb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/k;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 214
    return-void
.end method

.class Lcom/viber/voip/messages/ui/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cu;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 508
    return-void
.end method

.class Lcom/viber/voip/messages/conversation/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/c;->a:Lcom/viber/voip/messages/conversation/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/c;->a:Lcom/viber/voip/messages/conversation/ui/b;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/b;->a(Lcom/viber/voip/messages/conversation/ui/b;)Lcom/viber/voip/messages/conversation/ui/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ui/f;->a()V

    .line 52
    return-void
.end method

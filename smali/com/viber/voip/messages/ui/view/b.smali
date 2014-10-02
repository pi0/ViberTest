.class Lcom/viber/voip/messages/ui/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/view/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/view/a;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/messages/ui/view/b;->a:Lcom/viber/voip/messages/ui/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/b;->a:Lcom/viber/voip/messages/ui/view/a;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/view/a;->a(Lcom/viber/voip/messages/ui/view/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/b;->a:Lcom/viber/voip/messages/ui/view/a;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/view/a;->b(Lcom/viber/voip/messages/ui/view/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method

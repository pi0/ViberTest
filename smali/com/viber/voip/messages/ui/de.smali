.class Lcom/viber/voip/messages/ui/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/f/e;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessagesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/viber/voip/messages/ui/de;->a:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/viber/voip/messages/ui/de;->a:Lcom/viber/voip/messages/ui/MessagesFragment;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/de;->a:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Landroid/content/Context;Z)V

    .line 606
    return-void
.end method

.class Lcom/viber/voip/messages/ui/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessagesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/viber/voip/messages/ui/dd;->a:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dd;->a:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 440
    return-void
.end method

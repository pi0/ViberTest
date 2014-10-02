.class Lcom/viber/voip/contacts/ui/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/cr;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cs;->a:Lcom/viber/voip/contacts/ui/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cs;->a:Lcom/viber/voip/contacts/ui/cr;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 91
    return-void
.end method

.class Lcom/viber/voip/util/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/bo;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/viber/voip/util/bq;->a:Lcom/viber/voip/util/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/viber/voip/util/bq;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->b(Lcom/viber/voip/util/bo;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a()V

    .line 447
    iget-object v0, p0, Lcom/viber/voip/util/bq;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->c(Lcom/viber/voip/util/bo;)Lcom/viber/voip/contacts/ui/ContactsFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->setHasOptionsMenu(Z)V

    .line 448
    return-void
.end method

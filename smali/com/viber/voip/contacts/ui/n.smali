.class Lcom/viber/voip/contacts/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/jni/OnlineContactInfo;

.field final synthetic b:Lcom/viber/voip/contacts/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/m;Lcom/viber/jni/OnlineContactInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/n;->b:Lcom/viber/voip/contacts/ui/m;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/n;->a:Lcom/viber/jni/OnlineContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/n;->b:Lcom/viber/voip/contacts/ui/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/m;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/n;->b:Lcom/viber/voip/contacts/ui/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/m;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/n;->b:Lcom/viber/voip/contacts/ui/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/m;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/n;->a:Lcom/viber/jni/OnlineContactInfo;

    iget-boolean v1, v1, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/n;->a:Lcom/viber/jni/OnlineContactInfo;

    iget-wide v2, v2, Lcom/viber/jni/OnlineContactInfo;->time:J

    invoke-static {v1, v2, v3}, Lcom/viber/voip/util/w;->a(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;)V

    .line 1254
    :cond_0
    return-void
.end method

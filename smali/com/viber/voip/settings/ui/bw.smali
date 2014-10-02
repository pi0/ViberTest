.class Lcom/viber/voip/settings/ui/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/SettingsHeadersFragment;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bw;->b:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/bw;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->c:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bw;->b:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a(Lcom/viber/voip/settings/ui/SettingsHeadersFragment;)V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bw;->b:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->b(Lcom/viber/voip/settings/ui/SettingsHeadersFragment;)V

    .line 176
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bw;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bw;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 178
    return-void
.end method

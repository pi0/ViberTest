.class Lcom/viber/voip/settings/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/viber/voip/settings/ui/i;->a:Lcom/viber/voip/settings/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/settings/ui/i;->a:Lcom/viber/voip/settings/ui/a;

    iget-object v2, v2, Lcom/viber/voip/settings/ui/a;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {p3}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 251
    iget-object v2, p0, Lcom/viber/voip/settings/ui/i;->a:Lcom/viber/voip/settings/ui/a;

    iget-object v2, v2, Lcom/viber/voip/settings/ui/a;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {p3}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 255
    return-void

    :cond_0
    move v2, v1

    .line 250
    goto :goto_0

    :cond_1
    move v0, v1

    .line 251
    goto :goto_1

    .line 253
    :catchall_0
    move-exception v0

    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0
.end method

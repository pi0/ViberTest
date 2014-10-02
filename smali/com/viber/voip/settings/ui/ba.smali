.class public Lcom/viber/voip/settings/ui/ba;
.super Landroid/preference/ListPreference;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 199
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/ui/ba;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ba;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ba;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ba;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 222
    return-void
.end method

.method public a([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/viber/voip/settings/ui/ba;->a:[Ljava/lang/CharSequence;

    .line 212
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .parameter

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ba;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ba;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ba;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/ba;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 205
    new-instance v0, Lcom/viber/voip/settings/ui/az;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ba;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030105

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ba;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/settings/ui/ba;->a:[Ljava/lang/CharSequence;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/settings/ui/az;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILcom/viber/voip/settings/ui/ba;)V

    .line 206
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 208
    return-void
.end method

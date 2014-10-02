.class Lcom/viber/voip/settings/ui/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/preference/ListPreference;

.field final synthetic c:Lcom/viber/voip/settings/ui/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/j;[Ljava/lang/String;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/viber/voip/settings/ui/al;->c:Lcom/viber/voip/settings/ui/j;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/al;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/settings/ui/al;->b:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 848
    move v0, v1

    .line 849
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/settings/ui/al;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 850
    iget-object v2, p0, Lcom/viber/voip/settings/ui/al;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    :goto_1
    const/4 v1, 0x3

    const-string/jumbo v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changed VO installation type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/settings/ui/al;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/j/a;->b(I)V

    .line 859
    iget-object v1, p0, Lcom/viber/voip/settings/ui/al;->b:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/viber/voip/settings/ui/al;->a:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 861
    const/4 v0, 0x1

    return v0

    .line 849
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

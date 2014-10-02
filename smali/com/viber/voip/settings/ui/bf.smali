.class public Lcom/viber/voip/settings/ui/bf;
.super Lcom/viber/voip/settings/ui/bv;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/viber/voip/settings/m;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private g:I

.field private h:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f05000a

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/bv;-><init>(I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/settings/ui/bf;->g:I

    .line 37
    return-void
.end method

.method private a(Landroid/preference/RingtonePreference;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 180
    iget v0, p0, Lcom/viber/voip/settings/ui/bf;->g:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->f:Lcom/viber/voip/settings/l;

    invoke-static {}, Lcom/viber/voip/settings/j;->N()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->O()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 183
    iput v3, p0, Lcom/viber/voip/settings/ui/bf;->g:I

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1, v2}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {}, Lcom/viber/voip/settings/j;->av()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->b:Ljava/lang/String;

    .line 188
    :goto_1
    iput-object v2, p0, Lcom/viber/voip/settings/ui/bf;->b:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bf;->f:Lcom/viber/voip/settings/l;

    invoke-static {}, Lcom/viber/voip/settings/j;->av()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 195
    :goto_2
    iput v3, p0, Lcom/viber/voip/settings/ui/bf;->g:I

    goto :goto_0

    .line 187
    :cond_1
    const-string/jumbo v0, "content://settings/system/ringtone"

    goto :goto_1

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->c:Ljava/lang/String;

    .line 192
    :goto_3
    iput-object v2, p0, Lcom/viber/voip/settings/ui/bf;->c:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bf;->f:Lcom/viber/voip/settings/l;

    invoke-static {}, Lcom/viber/voip/settings/j;->aw()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    goto :goto_2

    .line 191
    :cond_3
    const-string/jumbo v0, "content://settings/system/notification_sound"

    goto :goto_3
.end method

.method private a(Landroid/preference/RingtonePreference;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c0531

    const/4 v3, 0x0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRingtoneSummary preference:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",ringtoneString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bf;->a(Ljava/lang/String;)V

    .line 110
    if-eqz p2, :cond_4

    .line 112
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/settings/ui/bf;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 115
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    invoke-static {}, Lcom/viber/voip/settings/j;->av()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iput-object p2, p0, Lcom/viber/voip/settings/ui/bf;->b:Ljava/lang/String;

    .line 143
    :goto_1
    return-void

    .line 119
    :cond_0
    const v0, 0x7f0c0531

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-static {p2}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {p0, v2}, Lcom/viber/voip/settings/ui/bf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 125
    :cond_1
    :try_start_1
    iput-object p2, p0, Lcom/viber/voip/settings/ui/bf;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 131
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRingtoneSummary Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bf;->a(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/viber/voip/settings/ui/bf;->g:I

    if-nez v0, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c05a8

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 135
    :cond_3
    iget v0, p0, Lcom/viber/voip/settings/ui/bf;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/settings/ui/bf;->g:I

    .line 136
    invoke-direct {p0, p1}, Lcom/viber/voip/settings/ui/bf;->a(Landroid/preference/RingtonePreference;)V

    goto :goto_1

    .line 140
    :cond_4
    iput-object v3, p0, Lcom/viber/voip/settings/ui/bf;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/viber/voip/settings/ui/bf;->b:Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1}, Lcom/viber/voip/settings/ui/bf;->a(Landroid/preference/RingtonePreference;)V

    goto :goto_1
.end method

.method public static a(Lcom/viber/voip/settings/l;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    invoke-static {}, Lcom/viber/voip/settings/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->l()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 224
    invoke-static {}, Lcom/viber/voip/settings/j;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->n()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 225
    invoke-static {}, Lcom/viber/voip/settings/j;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->r()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 226
    invoke-static {}, Lcom/viber/voip/settings/j;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->j()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 227
    invoke-static {}, Lcom/viber/voip/settings/j;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->p()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 229
    invoke-static {}, Lcom/viber/voip/settings/j;->N()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->O()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 230
    invoke-static {}, Lcom/viber/voip/settings/j;->at()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->au()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 231
    invoke-static {}, Lcom/viber/voip/settings/j;->av()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://settings/system/ringtone"

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 232
    invoke-static {}, Lcom/viber/voip/settings/j;->aw()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://settings/system/notification_sound"

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 234
    invoke-static {}, Lcom/viber/voip/settings/j;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Q()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 235
    invoke-static {}, Lcom/viber/voip/settings/j;->aB()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->aC()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 236
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bf;->h:Landroid/media/MediaPlayer;

    .line 177
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->f:Lcom/viber/voip/settings/l;

    invoke-static {}, Lcom/viber/voip/settings/j;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->r()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 202
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 206
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->av()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/viber/voip/settings/ui/bf;->f:Lcom/viber/voip/settings/l;

    invoke-static {}, Lcom/viber/voip/settings/j;->av()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/bf;->a(Landroid/preference/RingtonePreference;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->aw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/viber/voip/settings/ui/bf;->f:Lcom/viber/voip/settings/l;

    invoke-static {}, Lcom/viber/voip/settings/j;->aw()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/bf;->a(Landroid/preference/RingtonePreference;Ljava/lang/String;)V

    .line 213
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://settings/system/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".avi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".flv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal RingtoneUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_3
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bf;->b()V

    .line 162
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bf;->h:Landroid/media/MediaPlayer;

    .line 164
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->h:Landroid/media/MediaPlayer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 166
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 168
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bf;->b()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/bf;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->aB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/bf;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 52
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/viber/voip/settings/ui/bv;->onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/viber/voip/settings/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->e(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->e(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->l()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Lcom/viber/voip/settings/j;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->a(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->a(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->n()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Lcom/viber/voip/settings/j;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->f(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->f(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->j()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {}, Lcom/viber/voip/settings/j;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->f(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->f(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->r()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bf;->e()V

    goto :goto_0

    .line 89
    :cond_4
    invoke-static {}, Lcom/viber/voip/settings/j;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->g(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->g(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->p()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_5
    invoke-static {}, Lcom/viber/voip/settings/j;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->c(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->c(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->O()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_6
    invoke-static {}, Lcom/viber/voip/settings/j;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 95
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->d(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->d(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->Q()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_7
    invoke-static {}, Lcom/viber/voip/settings/j;->av()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 98
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/viber/voip/settings/ui/bf;->f:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "content://settings/system/ringtone"

    invoke-interface {v1, p2, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/bf;->a(Landroid/preference/RingtonePreference;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_8
    invoke-static {}, Lcom/viber/voip/settings/j;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bf;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RingtonePreference;

    iget-object v1, p0, Lcom/viber/voip/settings/ui/bf;->f:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "content://settings/system/notification_sound"

    invoke-interface {v1, p2, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/bf;->a(Landroid/preference/RingtonePreference;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_9
    invoke-static {}, Lcom/viber/voip/settings/j;->aB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->p(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->p(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->aC()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/viber/voip/settings/ui/bv;->onResume()V

    .line 58
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bf;->e()V

    .line 59
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bf;->f()V

    .line 63
    return-void
.end method

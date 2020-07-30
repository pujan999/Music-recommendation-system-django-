import pandas as pd


songs = pd.read_csv('Songs.csv', engine='python')
songs.head()

genre_labels = set()
for s in songs['genres'].str.split(',').values:
    genre_labels = genre_labels.union(set(s))




# Break up the big genre string into a string array
songs['genres'] = songs['genres'].str.split(',')
# Convert genres to string value
songs['genres'] = songs['genres'].fillna("").astype('str')


from sklearn.feature_extraction.text import TfidfVectorizer

tf = TfidfVectorizer()
tfidf_matrix = tf.fit_transform(songs['genres'])
tfidf_matrix

# In[46]:


from sklearn.metrics.pairwise import linear_kernel

cosine_sim = linear_kernel(tfidf_matrix, tfidf_matrix)
cosine_sim[:4, :4]

# In[68]:


# Build a 1-dimensional array with songs name
titles = songs['song_name']
indices = pd.Series(songs.index, index=songs['song_name'])


# In[67]:


def genre_recommendations(title):
    idx = indices[title]
    sim_scores = list(enumerate(cosine_sim[idx]))
    sim_scores = sorted(sim_scores, key=lambda x: x[1], reverse=True)
    sim_scores = sim_scores[1:21]
    songs_indices = [i[0] for i in sim_scores]
    return titles.iloc[songs_indices]


print('the recommendations are', genre_recommendations('I will be there for yoo').head(3))


